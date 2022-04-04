# docker ps

## Get container ID with its name

```bash
docker ps -q -f 'name=<container-name>'
```
or
```bash
docker ps -f 'name=<container-name>' --format "{{.ID}}"
```
