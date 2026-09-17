# Do not translate

These reach a config file, a URL or a shell. Translating them breaks the user's setup.

## Traefik configuration syntax

| Kind | Examples |
|---|---|
| Rule matchers | `PathPrefix`, `Host`, `Headers`, `Method`, `Query`, `ClientIP` |
| Rule expressions | `Host(\`example.com\`) && PathPrefix(\`/api\`)` |
| Label and YAML keys | `traefik.http.routers.*`, `entryPoints`, `certResolver`, `middlewares` |
| Middleware type names | `basicAuth`, `redirectScheme`, `rateLimit`, `ipAllowList` |
| Service types | `loadBalancer`, `weighted`, `mirroring`, `failover`, `highestRandomWeight` |

## Identifiers and paths

Hostnames, domains, URLs, file paths, container names, network names, environment variable names, header names, HTTP methods, status codes, log levels, port numbers, file extensions.

## Fixed strings

| String | Why |
|---|---|
| `DELETE` typed into a confirmation box | The application compares it letter for letter |
| Anything shown in a code block or monospace | It is copied into a terminal or a config file as is |
| API field names in error messages | They match the JSON the API returns |

## Product names

Traefik, Traefik Manager, TMA, CrowdSec, Docker, Podman, Kubernetes, Unraid, Let's Encrypt, Cloudflare, Weblate, GitHub.

## Units and formats

`ms`, `s`, `KB`, `MB`, `GB`, ISO dates, IP addresses, CIDR ranges.

The words around a value are translated, the value and its unit are not. A language that places the unit before the number needs a source string change, raised as an issue.
