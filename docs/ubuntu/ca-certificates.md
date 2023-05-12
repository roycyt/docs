# 安裝 SSL 憑證

```
$ mkdir -p /usr/local/share/ca-certificates/
$ cp c19be9bb173b2a21.crt /usr/local/share/ca-certificates/
$ update-ca-certificates
```

之後執行 `curl` 就不用加 `-k, --insecure`。
