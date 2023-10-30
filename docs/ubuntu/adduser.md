新增帳號 `user1`：
```
$ sudo adduser user1
```
將 `user1` 加到 `sudo` 群組：
```
$ sudo adduser user1 sudo
```

```
$ sudo adduser roy --disabled-password
```
- `--disabled-password`: Like `--disabled-login`, but logins are still possible (for example using SSH RSA keys) but not using password authentication.
