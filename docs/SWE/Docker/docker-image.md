# docker image

## List dangling images

```bash
docker image ls -f dangling=true
```

## Remove dangling images

```bash
docker image rm $(docker image ls -f dangling=true -q)
```
