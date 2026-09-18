# tm-locale

Translator resources for [Traefik Manager](https://github.com/chr0nzz/traefik-manager): the handbook, the glossary and the language reviewer list.

## Contents

| File | Holds |
|---|---|
| [HANDBOOK.md](HANDBOOK.md) | How translation works, from an English string to a release |
| [GLOSSARY.md](GLOSSARY.md) | Product terms and their definitions |
| [DO-NOT-TRANSLATE.md](DO-NOT-TRANSLATE.md) | Literals that stay English |
| [LANGUAGE-REVIEWERS.md](LANGUAGE-REVIEWERS.md) | The reviewer for each language |

## Where the catalogues live

Not here. Each catalogue lives in the repository that ships it, so a string and its translation move in one commit.

| Surface | Repository | Files |
|---|---|---|
| Web app | [chr0nzz/traefik-manager](https://github.com/chr0nzz/traefik-manager) | `locale/<locale>/LC_MESSAGES/messages.po` |
| Mobile app | [chr0nzz/traefik-manager-mobile](https://github.com/chr0nzz/traefik-manager-mobile) | `app/src/main/res/values-<locale>/strings.xml` |

The documentation site and the tm CLI stay English.

## Where the tooling lives

Extraction and checks live next to the catalogues, so they change with the code they read.

| Surface | Tooling | Commands |
|---|---|---|
| Web app | [`scripts/i18n/`](https://github.com/chr0nzz/traefik-manager/tree/main/scripts/i18n) | `make i18n-extract` rebuilds `messages.pot` and every catalogue, `make i18n-check` runs every check CI runs |
| Mobile app | Not started | Added with the mobile release that ships translations |

## How translation happens

Translation happens on Weblate, not by editing files in this repository. One Weblate project covers both applications and opens a pull request against each one.

Weblate project: linked here once it exists.

A translation reaches a release once three things hold: it is marked translated rather than **Needs editing**, the language reviewer approved it, and the pull request passed the checks below.

## What the checks reject

Every pull request runs them, and a translation that fails one is not merged.

| Rejected | Why |
|---|---|
| HTML tags, or `onclick=` style attributes, that the English does not have | The text lands inside the page |
| `"`, `` ` ``, `\`, `<` or `>` beyond those in the English | They can end the text early and start code or markup |
| Links, `javascript:` or `data:` addresses not in the English | A translation never adds a destination |
| Invisible direction and control characters | They make text read differently from what it is |
| Placeholders added, dropped, renamed or given a width | `{name}` and `%(name)s` must match the English exactly |
| `{name.attribute}` style placeholders | Only plain `{name}` is allowed |
| Plural forms left partly empty, or a changed plural rule | Every form the language has must be filled |
| A translation far longer than the English | Buttons and table headers have little room |
| A Weblate pull request that changes any other file | Weblate only edits catalogues |

Traefik Manager also escapes every translation when it renders the page, so text from a catalogue is always shown as text.

## Language requests

Language requests and questions about translation belong in this repository. Bugs in the application belong on the [Traefik Manager tracker](https://github.com/chr0nzz/traefik-manager/issues).

Anyone can translate any language. A language is enabled in a release once it has a reviewer, listed in [LANGUAGE-REVIEWERS.md](LANGUAGE-REVIEWERS.md).

## License

GPL-3.0, see [LICENSE](LICENSE).
