https://man7.org/linux/man-pages/man1/rsync.1.html


```
$ rsync -av -z --progress  SRC... [DEST]
$ rsync -av -z -P --append SRC... [DEST]
```

```
--append                 append data onto shorter files
--archive, -a            archive mode is -rlptgoD (no -A,-X,-U,-N,-H)
--compress, -z
--dry-run, -n            perform a trial run with no changes made
--human-readable, -h     output numbers in a human-readable format
--partial                keep partially transferred files
--progress               show progress during transfer
--stats                  give some file-transfer stats
--verbose, -v
-P                       same as --partial --progress
```
