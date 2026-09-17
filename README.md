# tm-locale

Translator resources for [Traefik Manager](https://github.com/chr0nzz/traefik-manager): the handbook, the glossary, the language reviewer list and the scripts both application repositories share.

## Contents

| File | Holds |
|---|---|
| [HANDBOOK.md](HANDBOOK.md) | How translation works, from an English string to a release |
| [GLOSSARY.md](GLOSSARY.md) | Product terms and their definitions |
| [DO-NOT-TRANSLATE.md](DO-NOT-TRANSLATE.md) | Literals that stay English |
| [LANGUAGE-REVIEWERS.md](LANGUAGE-REVIEWERS.md) | The reviewer for each language |
| [scripts/](scripts) | Extraction helper, catalogue to JSON converter, shared catalogue checks |

## Where the catalogues live

Not here. Each catalogue lives in the repository that ships it, so a string and its translation move in one commit.

| Surface | Repository | Files |
|---|---|---|
| Web app | [chr0nzz/traefik-manager](https://github.com/chr0nzz/traefik-manager) | `locale/<locale>/LC_MESSAGES/messages.po` |
| Mobile app | [chr0nzz/traefik-manager-mobile](https://github.com/chr0nzz/traefik-manager-mobile) | `app/src/main/res/values-<locale>/strings.xml` |

The documentation site and the tm CLI stay English.

## How translation happens

Translation happens on Weblate, not by editing files in this repository. One Weblate project covers both applications and opens a pull request against each one.

Weblate project: linked here once it exists.

## Language requests

Language requests and questions about translation belong in this repository. Bugs in the application belong on the [Traefik Manager tracker](https://github.com/chr0nzz/traefik-manager/issues).

Anyone can translate any language. A language is enabled in a release once it has a reviewer, listed in [LANGUAGE-REVIEWERS.md](LANGUAGE-REVIEWERS.md).

## License

GPL-3.0, see [LICENSE](LICENSE).
