# File and Directory in /etc/cups Directory

## cups-pdf.conf

Virtual PDF printer configuration file.
The [cups-pdf.conf](cups-pdf.conf) may already exist
in /etc/cups directory.

Here shows example to install your own cups-pdf.conf. (1) step
by step, (2) using install command.

```bash
# (1) step by step method.
sudo cp --preserve=timestamps cups-pdf.conf /etc/cups/
sudo chmod 644 cups-pdf.conf
sudo chown root:root cups-pdf.conf
# or (2) Using install command.
sudo install -m 644 -o root -g root -p cups-pdf.conf /etc/cups/cups-pdf.conf
```

The cups-pdf.conf contains some my favorite modifications.

+ (Label) Add job number prefix.
  + ppd/PDF.conf also has this configuration.
+ (AnonUMask) Created PDF file with mode ug=rw from Anonymous (nobody).
+ (DecodeHexStrings) Decode hex string in title.

## ppd

The package cups creates this directory.
So you don't need create it.
