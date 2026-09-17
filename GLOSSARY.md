# Glossary

Product terms with one agreed translation per language. This file is the source; the Weblate glossary component is seeded from it.

Each term gets one translation per language, recorded in Weblate and used everywhere after that. Where the local technical community already uses the English word, the English word is the better choice.

| Term | Definition |
|---|---|
| router | The rule that matches an incoming request and hands it to a service |
| service | The backend a router forwards to, one or more server addresses |
| middleware | A step between router and service that changes the request or the response |
| entrypoint | A named port Traefik listens on, for example `web` on 80 |
| resolver | A certificate resolver: the ACME account and challenge used to issue certificates |
| provider | A source of Traefik config: the file provider, Docker, Kubernetes and others |
| agent | The companion service (TMA) on another server, with no UI of its own |
| hub | The Traefik Manager that the agents report to |
| route | One entry in the Routes tab: a router with its service and middlewares |
| backup | A timestamped copy of a config file, taken before a change |
| certificate | A TLS certificate, usually issued by a resolver |
| alert | A CrowdSec record of suspicious activity |
| decision | A CrowdSec action against an address, such as a ban or a captcha |
| bouncer | The component that enforces CrowdSec decisions on traffic |
| dashboard | The Traefik Manager overview page, not the Traefik dashboard |

## Notes

- `router` and `route` are different things and stay distinct in every language.
- `agent` and `hub` describe the same product on two machines, so the pair stays consistent.
- `service` is a Traefik object, not customer service.
- `decision` is CrowdSec's word for an enforced action, not a choice a user makes.
