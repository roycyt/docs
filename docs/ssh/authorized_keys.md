讓本機可以透過公鑰登入遠端主機的 ansible 帳號：
```
scp ~/.ssh/id_rsa.pub ansible@10.123.31.40:/home/ansible/.ssh/authorized_keys
```

新增另一台主機：
```
scp ansible@10.123.31.40:/home/ansible/.ssh/authorized_keys .
cat B_id_rsa.pub >> authorized_keys
scp authorized_keys ansible@10.123.31.40:/home/ansible/.ssh/authorized_keys
```
