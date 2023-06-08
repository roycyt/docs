# journalctl

```
sudo journalctl -xeu foo.service
```

## Boot messages

```bash
$ sudo journalctl --list-boots
$ sudo journalctl -b
$ sudo journalctl -b -1 
```

## Reference

* [https://www.freedesktop.org/software/systemd/man/journalctl.html](https://www.freedesktop.org/software/systemd/man/journalctl.html)
* [Using journalctl - The Ultimate Guide To Logging](https://www.loggly.com/ultimate-guide/using-journalctl/)
