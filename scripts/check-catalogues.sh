#!/usr/bin/env bash
set -uo pipefail

REPO=${1:-.}
HERE=$(cd "$(dirname "$0")" && pwd)
TESTS_FILE=${TESTS_FILE:-"$HERE/pofilter-tests.txt"}

cd "$REPO"

status=0
fail() {
  echo "FAIL: $1" >&2
  status=1
}

shopt -s nullglob
catalogues=(locale/*/LC_MESSAGES/messages.po)
shopt -u nullglob

if [ ${#catalogues[@]} -eq 0 ]; then
  echo "no catalogues found under locale/" >&2
  exit 1
fi

test_args=()
while read -r test_name; do
  [ -n "$test_name" ] && test_args+=("-t" "$test_name")
done < "$TESTS_FILE"

for po in "${catalogues[@]}"; do
  msgfmt --check-format -o /dev/null "$po" || fail "msgfmt: $po"

  report=$(mktemp)
  pofilter "${test_args[@]}" "$po" "$report" >/dev/null 2>&1
  if [ -s "$report" ]; then
    cat "$report" >&2
    fail "pofilter: $po"
  fi
  rm -f "$report"
done

if grep -rnE '\b(_|gettext|ngettext|lazy_gettext)\(\s*f["'"'"']' --include='*.py' . >&2; then
  fail "f-string inside a gettext call, it cannot be extracted"
fi

if grep -rnE '_\([^)]*\)\s*\|\s*safe' --include='*.html' templates >&2; then
  fail "translated string piped through |safe"
fi

if grep -rn 'python-brace-format' locale >&2; then
  fail "python-brace-format in a catalogue, str.format msgstrs can traverse attributes"
fi

before=$(mktemp)
cp locale/messages.pot "$before" 2>/dev/null || true
"$HERE/extract.sh" . >/dev/null
if ! diff -q \
  <(grep -v '^"POT-Creation-Date' "$before") \
  <(grep -v '^"POT-Creation-Date' locale/messages.pot) >/dev/null; then
  fail "catalogue is stale, run scripts/extract.sh and commit the result"
fi
cp "$before" locale/messages.pot
rm -f "$before"

exit $status
