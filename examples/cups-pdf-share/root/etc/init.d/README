# files in /etc/init.d Directory

## nmbd3 and smbd3

System-V init scripts to start/stop nbmd and smbd they
are built with prefix /usr/local/samba.

Files to copy to /etc/init.d,

+ [nmbd3](./nmbd3)
+ [smbd3](./smbd3)

Following commands shows install steps,
(1) step by step, or (2) using install command.

```bash
# (1) Step by step method.
sudo cp --preserve=timestamps nmbd3 smbd3 /etc/init.d
pushd /etc/init.d
sudo chmod 755 nmbd3 smbd3
sudo chown root:root nmbd3 smbd3
popd
# or (2) Using install command.
sudo install -m 755 -o root -g root -p nmbd3 /etc/init.d/nmbd3
sudo install -m 755 -o root -g root -p smbd3 /etc/init.d/smbd3
```
