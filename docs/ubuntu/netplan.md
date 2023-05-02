Ubuntu 22.04 安裝後會產生 `/etc/netplan/00-installer-config.yam`，其內容為：

```
# This is the network config written by 'subiquity'
network:
  ethernets:
    eno1:
      dhcp4: true
  version: 2
```

變更為固定 IP 的內容：

```
echo 'network:
  ethernets:
    eno1:
      dhcp4: no
      addresses: [10.123.31.40/24]
      routes:
        - to: default
          via: 10.123.31.1
      nameservers:
        addresses: [10.123.200.11,10.123.200.12]
  version: 2
' | sudo tee /etc/netplan/00-installer-config.yaml
```

```
sudo netplan generate
sudo netplan --debug apply
```
