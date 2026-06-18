# Symbolic Links from /usr/local/sbin to Samba Executables

Place symbolic links to Samba daemons.

```bash
pushd /usr/local/sbin
sudo ln -s ../samba/sbin/nmbd nmbd3
sudo ln -s ../samba/sbin/smbd smbd3
popd
```

## smbd3

The Samba (SMB) daemon in built samba-3.6.25.

## nmbd3

The Samba NetBIOS name server daemon in built samba-3.6.25.

> [!TIP]
> The init scripts [/etc/init.d/nmbd3](../../../etc/init.d/nmbd3),
> and [/etc/init.d/smbd3](../../../etc/init.d/smbd3) refer
> nmbd, and smbd by absolute path.

> [!TIP]
> Use the winbindd in samba **pacakge** from linux distribution.
> You can use nmbd and smbd in built samba-3.6.25 and winbindd
> in samba package at a same time.
