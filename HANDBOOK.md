# Translator handbook

Traefik Manager edits live reverse proxy configuration. A wrong translation on a delete button costs a user their routes, so accuracy comes before fluency and before speed.

## Joining

1. Create a Weblate account and open the Traefik Manager project. Reading the translations needs no account.
2. Pick a language and start translating or suggesting.
3. Read [GLOSSARY.md](GLOSSARY.md) and [DO-NOT-TRANSLATE.md](DO-NOT-TRANSLATE.md) first.

Anyone can translate any language, at any time. Reviewing is a separate role, described in [LANGUAGE-REVIEWERS.md](LANGUAGE-REVIEWERS.md).

## How a string reaches a release

| Step | Where | Who |
|---|---|---|
| English string added or changed | Application repository | Maintainer |
| Extraction updates the catalogue | CI | Automated |
| String appears for translation | Weblate | Automated |
| Translation written | Weblate | Translator |
| Translation reviewed | Weblate | Language reviewer |
| Pull request opened against the application repository | GitHub | Weblate |
| Merged and shipped | Application repository | Maintainer |

Translations ship with the next release, not the moment they are saved. A typo fix does not warrant its own release.

## States in Weblate

| State | Means |
|---|---|
| Untranslated | No translation yet, the application falls back to English |
| Needs editing | The English source changed, or a machine pre-filled the string. The old translation is kept but not used until it is confirmed |
| Translated | Used in the application |
| Approved | Checked by the language reviewer |

Machine pre-translation seeds a language and is always marked **Needs editing**. It is a draft, not a translation.

## Rules

| Rule | Detail |
|---|---|
| Placeholders survive | `{name}`, `%(count)s`, `%s` and `{0}` must appear in the translation, spelled the same. Their order may change, their names may not |
| Markup survives | Tags such as `<b>` and `<a href=...>` stay. Only the text between them is translated |
| Plural forms are complete | A language with three plural forms needs all three filled. An empty form renders nothing |
| Tone is short and direct | No exclamation marks |
| Length stays close to the English | Buttons and table headers have little room, and long words break the layout |
| Glossary terms are consistent | One term, one translation, everywhere. Weblate shows glossary hits beside each string |
| Literals stay English | The list is in [DO-NOT-TRANSLATE.md](DO-NOT-TRANSLATE.md) |
| Ambiguity is a question, not a guess | A comment on the string in Weblate reaches the maintainer. A wrong guess reaches every user |

## Destructive actions

Strings on buttons and confirmations that delete, remove, revoke, restart or reset must say exactly that in the target language. Softening them, or reusing a generic "OK", hides what the action does. An English string that is ambiguous is worth a comment rather than a reading.

## Unclear English source strings

The English text is the key for every other language, so rewording it resets them all. Unclear English belongs in an issue in this repository, where it is fixed once for everyone, rather than being worked around in one language.

## Reviewing

Each language has one named, revocable reviewer, who checks what others suggest, marks strings approved and answers questions for that language, so nothing ships that nobody reviewed. Voting alone is not a review: a small language has too few voters to catch sabotage.
