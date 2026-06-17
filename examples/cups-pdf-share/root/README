# Directory Tree and Files to Share Folder and Virtual PDF Printer

This directory tree and files shows settings
to run server which shares folder and virtual PDF printer.
Install the printer-driver-cups-pdf package.

```bash
sudo apt install  printer-driver-cups-pdf
```

## etc

Sub directories under /etc directory contain files to configure,

+ [/etc/init.d](./etc/init.d/)
  + Scripts [nmbd3](./etc/init.d/nmbd3)
    and [smbd3](./etc/init.d/smbd3) to start and stop samba-3.6.25 daemons.
+ [/etc/cups](./etc/cups/)
  + [cups-pdf.conf](./etc/cups/cups-pdf.conf): CUPS-PDF configuration.
  + [ppd](./etc/cups/ppd/)
    + [PDF.ppd](./etc/cups/ppd/PDF.ppd): Virtual PDF printer parameters.
+ [/etc/samba3](./etc/samba3/)
  + smb.conf: Symbolic link to /usr/local/samba/lib/smb.conf

## home

Sub directory under /home directory contain share folder.

+ [/home/nobody/share](./home/nobody/share/)
  + public share folder

## usr

Sub directories and files under /usr directory contain the Samba
configuration and link to executables.

+ [/usr/local](./usr/local/)
  + [bin](./usr/local/bin/)
    + pdbedit3: link to executable
    + smbpasswd3: link to executable
    + testparm3: link to executable
  + [sbin](./usr/local/sbin/)
    + nmbd3: link to executable
    + smbd3: link to executable

+ [/usr/local/samba](./usr/local/samba/)
  + Samba files
  + [lib](./usr/local/samba/lib/)
    + [smb.conf](./usr/local/samba/lib/smb.conf): Samba configuration

## var

Sub directories under /var directory contain CUPS-PDF spool and
output directories.

+ [/var/spool/cups-pdf](./var/spool/cups-pdf/)
  + ANONYMOUS
    + Contains PDF files printed from virtual PDF printer.
  + SPOOL
    + CUPS-PDF spool directory
+ /var/tmp
  + Linux Filesystem Hierarchy Standard temporary directory.
  + Samba print service spool directory.
