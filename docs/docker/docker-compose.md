# Docker Compose

# docker-compose

* By default, Compose reads two files, a `docker-compose.yml` and an optional `docker-compose.override.yml` file. By convention, the `docker-compose.yml` contains your base configuration. The override file, as its name implies, can contain configuration overrides for existing services or entirely new services.
  * For **single-value** options like `image`, `command` or `mem_limit`, the new value replaces the old value.
  * For the **multi-value** options `ports`, `expose`, `external_links`, `dns`, `dns_search`, and `tmpfs`, Compose concatenates both sets of values.
  * In the case of `environment`, `labels`, `volumes`, and `devices`, Compose "merges" entries together with locally-defined values taking precedence. For `environment` and `labels`, the environment variable or label name determines which value is used.

## Compose Specification

* https://docs.docker.com/compose/compose-file/
* Top-level `version` property is defined by the specification for backward compatibility but is only informative.[^1]


[^1]: https://docs.docker.com/compose/compose-file/#version-top-level-element
