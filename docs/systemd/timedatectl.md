https://www.freedesktop.org/software/systemd/man/timedatectl.html


```
timedatectl
timedatectl timesync-status
```

# 變更時區

```
sudo timedatectl set-timezone Asia/Taipei
```

# 變更 NTP 鐘源

假設預設目前的 `/etc/systemd/timesyncd.conf`如下，並沒有設定 NTP 伺服器位置：
```
[Time]
#NTP=
#FallbackNTP=ntp.ubuntu.com
#RootDistanceMaxSec=5
#PollIntervalMinSec=32
#PollIntervalMaxSec=2048
```

指定 NTP 伺服器位置：

```
sudo timedatectl set-ntp false
sudo sed -i -e 's/^#NTP=.*$/NTP=ntp.example.com ntp2.example.com/' /etc/systemd/timesyncd.conf
sudo timedatectl set-ntp true
sudo timedatectl timesync-status
```
