# Language reviewers

Anyone can translate any language, at any time. Each language also has one named reviewer, who checks what everyone else writes, so nothing ships that nobody reviewed. A language is enabled in a release once it has a reviewer or has passed an agent verification.

| Language | Code | Reviewer | GitHub | Discord | Added |
|---|---|---|---|---|---|
| German | de | agent verified | | | 2026-09-29 |
| French | fr | agent verified | | | 2026-09-28 |
| French (Canada) | fr-CA | agent verified | | | 2026-09-30 |
| Spanish | es | agent verified | | | 2026-09-29 |
| Chinese (Simplified) | zh-Hans | agent verified | | | 2026-09-29 |
| Russian | ru | agent verified | | | 2026-09-29 |
| Dutch | nl | agent verified | | | 2026-09-29 |
| Czech | cs | agent verified | | | 2026-09-30 |
| Portuguese (Portugal) | pt | agent verified | | | 2026-09-29 |
| Portuguese (Brazil) | pt-BR | agent verified | | | 2026-09-29 |
| Danish | da | agent verified | | | 2026-09-30 |

All of these are open for translation on [Weblate](https://hosted.weblate.org/projects/traefik-manager/web-app/) now, and any other language is added on request. None has a reviewer yet. Languages marked agent verified ship anyway, and a reviewer is still welcome for each.

English (United Kingdom) and English (United States) need no reviewer: they only change the spelling of the Canadian English source, and the web app's tooling fills them in.

This is the Reviewer permission in Weblate, held for one language.

## Becoming a reviewer

A request is an issue in this repository naming the language, the Weblate username, the GitHub handle and, if you are on the [Discord](https://discord.gg/vRQCMrrjtz), your Discord username. Reviewers get the Translation Reviewer role and their language tag there, so other translators can find them. Translating a meaningful part of the language first is the usual route.

## What a reviewer does

| Duty | Detail |
|---|---|
| Review | Suggestions checked before approval, especially on destructive actions |
| Consistency | One glossary term, one translation, across both apps |
| Availability | String comments answered in reasonable time, and a note when stepping back |
| Escalate | Unclear or wrong English source strings raised as issues |

## Trust

The role is revocable, and is removed without discussion for a translation that changes what an action does. Traefik Manager deletes routers and rewrites proxy config: a mistranslated button is a destructive bug, not a typo.

A language with no reviewer and no agent verification stays open for translation, it is just not enabled in a release yet.
