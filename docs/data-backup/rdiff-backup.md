# Timezone

* Like other Unix and Python programs, rdiff-backup respects the `TZ` environment variable, which can be used to temporarily change the timezone.

# Backup
```
$ tree Data/
Data/
└── backupDB.zip
```
```
$ rdiff-backup -v5 backup --print-statistics Data MyBackup
* Using repository 'MyBackup'
* Unable to import module (py)xattr. Extended attributes not supported on filesystem at path backupDB-05-20
* Unable to import module posix1e from pylibacl package. POSIX ACLs not supported on filesystem at path backupDB-05-20
* Unable to import win32security module. Windows ACLs not supported by filesystem at path backupDB-05-20
* Could not determine if source directory backupDB-05-20 permits trailing spaces or periods in filenames because we can't find any files with trailing dot/period. It will be treated as permitting such files, but none will exist if it doesn't, so it doesn't really matter and is harmless
```
* `-v5` (`v` for verbosity)
    ```
    0 No information given
    1 Fatal Errors displayed
    2 Warnings
    3 Important notes, and maybe later some global statistics (default)
    4 Some global settings, miscellaneous messages (obsolete)
    5 Mentions which files were changed, and other info
    6 More information on each file processed (obsolete)
    7 More information on various things (obsolete)
    8 Debug, without timestamp
    9 Also debug, but with timestamp
    ```

```
$ tree MyBackup/
MyBackup/
├── backupDB.zip
└── rdiff-backup-data
    ├── backup.log
    ├── chars_to_quote
    ├── current_mirror.2023-05-23T13:40:15+08:00.data
    ├── error_log.2023-05-23T13:37:34+08:00.data
    ├── error_log.2023-05-23T13:38:03+08:00.data
    ├── error_log.2023-05-23T13:38:41+08:00.data
    ├── error_log.2023-05-23T13:40:02+08:00.data
    ├── error_log.2023-05-23T13:40:15+08:00.data
    ├── file_statistics.2023-05-23T13:37:34+08:00.data.gz
    ├── file_statistics.2023-05-23T13:38:03+08:00.data.gz
    ├── file_statistics.2023-05-23T13:38:41+08:00.data.gz
    ├── file_statistics.2023-05-23T13:40:02+08:00.data.gz
    ├── file_statistics.2023-05-23T13:40:15+08:00.data.gz
    ├── increments
    │   ├── backupDB.zip.2023-05-23T13:37:34+08:00.diff
    │   └── backupDB.zip.2023-05-23T13:38:03+08:00.diff
    ├── increments.2023-05-23T13:37:34+08:00.dir
    ├── increments.2023-05-23T13:38:03+08:00.dir
    ├── mirror_metadata.2023-05-23T13:37:34+08:00.diff.gz
    ├── mirror_metadata.2023-05-23T13:38:03+08:00.diff.gz
    ├── mirror_metadata.2023-05-23T13:38:41+08:00.diff
    ├── mirror_metadata.2023-05-23T13:40:02+08:00.diff
    ├── mirror_metadata.2023-05-23T13:40:15+08:00.snapshot.gz
    ├── session_statistics.2023-05-23T13:37:34+08:00.data
    ├── session_statistics.2023-05-23T13:38:03+08:00.data
    ├── session_statistics.2023-05-23T13:38:41+08:00.data
    ├── session_statistics.2023-05-23T13:40:02+08:00.data
    ├── session_statistics.2023-05-23T13:40:15+08:00.data
    └── special_escapes

2 directories, 29 files
```

# List increments

```
$ rdiff-backup list increments MyBackup/
Found 2 increments:
    increments.2023-05-23T13:37:34+08:00.dir   Tue May 23 13:37:34 2023
    increments.2023-05-23T13:38:03+08:00.dir   Tue May 23 13:38:03 2023
Current mirror: Tue May 23 13:40:15 2023
```

# Restore

Since rdiff-backup makes a mirror, we can retrieve files using standard commands like `cp` to retrieve the latest version.

```
$ rdiff-backup restore --increment MyBackup/rdiff-backup-data/increments.2023-05-23T13:37:34+08:00.dir MyData/
$ tree MyData/
MyData/
└── backupDB.zip
```

# WebUI

* https://gitlab.com/ikus-soft/rdiffweb/