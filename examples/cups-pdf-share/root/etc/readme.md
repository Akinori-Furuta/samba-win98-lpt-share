# Directories Related with Samba under /etc

## cups

The package cups creates this directory.
So you don't need create it.

## init.d

Standard system-v-init or init under systemd
directory. So you don't need create it. You
should [install](./init.d/) [nmbd3](./init.d/nmbd3) and
[smbd3](init.d/smbd3) under /etc/init.d directory.

## samba3 (optional)

This directory contains symbolic link to
/usr/local/samba/lib/smb.conf.
When samba-3.6.25 is built with prefix /usr/local/samba,
it refers [/usr/local/samba/lib/smb.conf](../usr/local/samba/lib/smb.conf) as
configuration file. So, create symbolic link and make
it easy to find from /etc.

Make /etc/samba3 directory by (1) Step by step or (2) Using
install command.

```bash
# (1) Step by step method.
sudo mkdir /etc/samba3
sudo chmod 755 /etc/samba3
sudo chown root:root /etc/samba3
# or (2) Using install command.
sudo install -m 755 -o root -g root -d /etc/samba3
```
