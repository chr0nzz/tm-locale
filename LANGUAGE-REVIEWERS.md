# Language reviewers

Anyone can translate any language, at any time. Each language also has one named reviewer, who checks what everyone else writes, so nothing ships that nobody reviewed. A language needs a reviewer before it is enabled in a release.

| Language | Code | Reviewer | GitHub | Added |
|---|---|---|---|---|
| German | de | unassigned | | |
| French | fr | unassigned | | |
| Spanish | es | unassigned | | |
| Chinese (Simplified) | zh-Hans | unassigned | | |
| Russian | ru | unassigned | | |

All five are open for translation on [Weblate](https://hosted.weblate.org/projects/traefik-manager/web-app/) now, and any other language is added on request. None has a reviewer yet, so none is enabled in a release yet.

This is the Reviewer permission in Weblate, held for one language.

## Becoming a reviewer

A request is an issue in this repository naming the language, the Weblate username and the GitHub handle. Translating a meaningful part of the language first is the usual route.

## What a reviewer does

| Duty | Detail |
|---|---|
| Review | Suggestions checked before approval, especially on destructive actions |
| Consistency | One glossary term, one translation, across both apps |
| Availability | String comments answered in reasonable time, and a note when stepping back |
| Escalate | Unclear or wrong English source strings raised as issues |

## Trust

The role is revocable, and is removed without discussion for a translation that changes what an action does. Traefik Manager deletes routers and rewrites proxy config: a mistranslated button is a destructive bug, not a typo.

A language with no reviewer stays open for translation, it is just not enabled in a release yet.
