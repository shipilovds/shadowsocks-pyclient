# shadowsocks client (written in python)

A fast tunnel proxy that helps you bypass firewalls.

> This repo is just a copy of [original project repo](https://github.com/shadowsocks/shadowsocks).

I made some changes by myself, and thanks to author of [shadowsocks-py](https://pypi.org/project/shadowsocks-py/) (cannot find his repo) for fixes after the original code became deprecated.

Server part has been deleted. I don't need it on my client host. And I use official `shadowsocks-libev` as a server.

## Install

Install by PIP from git repo:

`sudo pip install git+https://github.com/shipilovds/shadowsocks-pyclient.git@main`

Another way is to download repo and run 'make install'. But don't forget about [build requirements](requirements.txt)

## Manual Usage with Config File

Create [configuration file](https://github.com/shadowsocks/shadowsocks/wiki/Configuration-via-Config-File) (`/etc/shadowsocks.json` for example)

And run `/usr/local/bin/sslocal -c /etc/shadowsocks.json`

## Usage with Systemd

Create `/etc/systemd/system/shadowsocks.service` file. You can copy it [from here](shadowsocks.service).

```shell
# Reload systemd:
sudo systemctl daemon-reload

# Start service (don't forget about /etc/shadowsocks.json before it):
sudo systemctl start shadowsocks

# Enable service if you want him to start automatically:
sudo systemctl enable shadowsocks
```

## Documentation

You can find all the documentation in the [Wiki](https://github.com/shadowsocks/shadowsocks/wiki).

## License

Apache License
