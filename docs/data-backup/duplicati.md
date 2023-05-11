# 安裝

Prepare Ubuntu 20.04/22.04:

```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel gtk-sharp2 libappindicator0.1-cil libmono-2.0-1
sudo apt --fix-broken install
```

Download the deb version: https://github.com/duplicati/duplicati/releases

```
$ curl -LO https://github.com/duplicati/duplicati/releases/download/v2.0.6.106-2.0.6.106_canary_2023-05-03/duplicati_2.0.6.106-1_all.deb
```

Install:
```
$ sudo dpkg -i duplicati_2.0.6.106-1_all.deb
```

# 設定

```
$ sudo vim /etc/systemd/system/duplicati.service
[Unit]
Description=Duplicati web-server
After=network.target

[Service]
Nice=19
IOSchedulingClass=idle
EnvironmentFile=-/etc/default/duplicati
ExecStart=/usr/bin/duplicati-server $DAEMON_OPTS
Restart=always

[Install]
WantedBy=multi-user.target
```

```
$ sudo vim /etc/default/duplicati
DAEMON_OPTS="--webservice-interface=any --webservice-port=8200 --portable-mode"
```

# 啟動

```
sudo systemctl enable duplicati.service
sudo systemctl daemon-reload
sudo systemctl start duplicati.service
sudo systemctl status duplicati.service
```

# The Server

The server tries to start listening on TCP port 8200. If this port is unavailable (because of another running Duplicati server instance or another process that uses port 8200), port 8300 will be tried, increasing until an unused port is found.