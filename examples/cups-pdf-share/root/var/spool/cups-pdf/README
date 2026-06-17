# Base Directory to Place Printed PDF Files

Here is /var/spool/cups-pdf. The base directory to spool
printing and printed out files.

## ANONYMOUS

The ANONYMOUS directory may be created by the `printer-driver-cups-pdf`
package. If you can't see this directory. You should create this directory
(1) step by step or (2) using install command.

```bash
# (1) Step by step method
sudo mkdir /var/spool/cups-pdf/ANONYMOUS
sudo chmod ug=rwx,o=,+t /var/spool/cups-pdf/ANONYMOUS
# Note default group may be lpadmin, change it nogroup.
# see AnonUser and Grp keys in /etc/cups/cups-pdf.conf.
sudo chown nobody:nogroup /var/spool/cups-pdf/ANONYMOUS
# CUPS-PDF can write out files under ANONYMOUS.
sudo setfacl -m g:lp:rwx /var/spool/cups-pdf/ANONYMOUS
# Printer administrator(s) can manage files under ANONYMOUS.
sudo setfacl -m g:lpadmin:rwx /var/spool/cups-pdf/ANONYMOUS
# or (2) Using install command
sudo install -m 1770 -o nobody -g nogroup -d /var/spool/cups-pdf/ANONYMOUS
sudo setfacl -m g:lp:rwx /var/spool/cups-pdf/ANONYMOUS
sudo setfacl -m g:lpadmin:rwx /var/spool/cups-pdf/ANONYMOUS
```

## SPOOL

The SPOOL directory contains CUPS-PDF temporal files.
If you can't see this directory after installing `printer-driver-cups-pdf`
package. You should create this directory (1) step by step or (2) using
install command.

```bash
# (1) Step by step method
# See Spool and Grp keys in /etc/cups/cups-pdf.conf.
sudo mkdir /var/spool/cups-pdf/SPOOL
# note: Mode 771 permits others to execute,
# The CUPS-PDF needs permission which others can execute.
# The CUPS-PDF fails printing with permission 770.
sudo chmod ug=rwx,o=x /var/spool/cups-pdf/SPOOL
sudo chown root:lp /var/spool/cups-pdf/SPOOL
# Printer administrator(s) can manage files under SPOOL.
sudo setfacl -m g:lpadmin:rwx /var/spool/cups-pdf/SPOOL
# or (2) Using install command
sudo install -m 771 -o root -g lp -d /var/spool/cups-pdf/SPOOL
sudo setfacl -m g:lpadmin:rwx /var/spool/cups-pdf/SPOOL
```
