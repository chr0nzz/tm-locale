# Scripts

Shared by both application repositories. They run from the repository root, or take its path as the first argument.

| Script | Does |
|---|---|
| `extract.sh [repo]` | Rebuilds `locale/messages.pot` with `pybabel` and updates every locale |
| `check-catalogues.sh [repo]` | The CI gate: `msgfmt --check-format`, `pofilter`, the grep rules and a stale catalogue check |
| `po-to-json.py <messages.po> [out.json]` | Turns a catalogue into the JSON block the page inlines for the browser |
| `pofilter-tests.txt` | The `pofilter` tests both repositories run, one per line |

Requires `babel`, `translate-toolkit` for `pofilter`, and `gettext` for `msgfmt`.

`check-catalogues.sh` exits non-zero on the first problem and prints the offending file. It rewrites nothing, so a stale catalogue is reported rather than fixed and the fix lands in a commit.

`po-to-json.py` drops fuzzy entries, so a string marked **Needs editing** in Weblate falls back to English instead of showing an outdated translation.
