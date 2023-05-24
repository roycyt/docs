* [duplicity](https://duplicity.gitlab.io/): Encrypted bandwidth-efficient backup
* Because duplicity uses GnuPG to encrypt and/or sign these archives, they will be safe from spying and/or modification by the server.
* [Cloud-based Server Backups with Duplicity and Amazon S3 | Kevin Deldycke](https://kevin.deldycke.com/2011/09/cloud-based-server-backups-duplicity-amazon-s3/)
* [duplicity · PyPI](https://pypi.org/project/duplicity/)
* [duplicity-backup-s3 · PyPI](https://pypi.org/project/duplicity-backup-s3/)
* [Duply](https://duply.net/Duply_(simple_duplicity)) (simple duplicity) - a duplicity shell frontend
* [duplicity backup - getting started](https://blog.xmatthias.com/duplicity_getting_started/)
* https://blog.xmatthias.com/tag/backup/

# Installation

## pip

```
$ pip install -U duplicity
Collecting duplicity
  Downloading duplicity-1.2.3.tar.gz (1.4 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.4/1.4 MB 7.3 MB/s eta 0:00:00
  Installing build dependencies ... done
  Getting requirements to build wheel ... error
  error: subprocess-exited-with-error

  × Getting requirements to build wheel did not run successfully.
  │ exit code: 1
  ╰─> [21 lines of output]
      sh: 1: msgfmt: not found
      Unable to get SCM version: No module named 'setuptools_scm'
      defaulting to 1.2.3
      Traceback (most recent call last):
        File "/home/ansible/venv/lib/python3.10/site-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 353, in <module>
          main()
        File "/home/ansible/venv/lib/python3.10/site-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 335, in main
          json_out['return_val'] = hook(**hook_input['kwargs'])
        File "/home/ansible/venv/lib/python3.10/site-packages/pip/_vendor/pyproject_hooks/_in_process/_in_process.py", line 118, in get_requires_for_build_wheel
          return hook(config_settings)
        File "/tmp/pip-build-env-xs9f4ro4/overlay/lib/python3.10/site-packages/setuptools/build_meta.py", line 341, in get_requires_for_build_wheel
          return self._get_build_requires(config_settings, requirements=['wheel'])
        File "/tmp/pip-build-env-xs9f4ro4/overlay/lib/python3.10/site-packages/setuptools/build_meta.py", line 323, in _get_build_requires
          self.run_setup()
        File "/tmp/pip-build-env-xs9f4ro4/overlay/lib/python3.10/site-packages/setuptools/build_meta.py", line 487, in run_setup
          super(_BuildMetaLegacyBackend,
        File "/tmp/pip-build-env-xs9f4ro4/overlay/lib/python3.10/site-packages/setuptools/build_meta.py", line 338, in run_setup
          exec(code, locals())
        File "<string>", line 347, in <module>
        File "<string>", line 128, in get_data_files
      AssertionError: af_ZA
      [end of output]

  note: This error originates from a subprocess, and is likely not a problem with pip.
error: subprocess-exited-with-error

× Getting requirements to build wheel did not run successfully.
│ exit code: 1
╰─> See above for output.

note: This error originates from a subprocess, and is likely not a problem with pip.
```

## Snap

```
sudo snap install duplicity --classic
```

# Backup

```
$ duplicity Data file://./MyBackup
```

# Restore

```
$ duplicity file://./MyBackup MyData
```

# Verify

```
duplicity verify file://./MyBackup ./Data/
```

[Re: [Duplicity-talk] how to use verify command?](https://mail.gnu.org/archive/html/duplicity-talk/2017-03/msg00056.html)
* the manpage seems to be out of date on verify. verify nowadays only restores to a temp path and checks if the result matches the checksum saved during backup.
* something like
    ```
    duplicity verify --compare-data --file-to-restore /etc/hostname file://backups/duplicity /
    ```
    assuming that '/' the fs root was your initial backup source on the other machine.