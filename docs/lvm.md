# 擴充 LV 空間
```
$ sudo fdisk -l
$ sudo fdisk /dev/sda
Command (m for help): n
Command (m for help): w
```
```
sudo pvcreate /dev/sda4
sudo vgextend ubuntu-vg /dev/sda4
sudo lvresize -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
sudo resize2fs /dev/ubuntu-vg/ubuntu-lv
```
