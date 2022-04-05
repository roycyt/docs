# docker image

## List dangling images

```bash
docker images -f dangling=true
```

## Remove dangling images

```bash
docker rmi $(docker images -q -f dangling=true)
```
