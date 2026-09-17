#!/usr/bin/env bash
set -euo pipefail

REPO=${1:-.}
LOCALES=${LOCALES:-"de fr es zh_Hans ru"}

cd "$REPO"

if [ ! -f babel.cfg ]; then
  echo "babel.cfg not found in $REPO" >&2
  exit 1
fi

pybabel extract \
  -F babel.cfg \
  -k _ -k gettext -k ngettext:1,2 -k pgettext:1c,2 -k npgettext:1c,2,3 -k lazy_gettext \
  -c NOTE \
  --no-location \
  -o locale/messages.pot \
  .

for locale in $LOCALES; do
  if [ -d "locale/$locale" ]; then
    pybabel update -i locale/messages.pot -d locale -l "$locale" --no-fuzzy-matching
  else
    pybabel init -i locale/messages.pot -d locale -l "$locale"
  fi
done
