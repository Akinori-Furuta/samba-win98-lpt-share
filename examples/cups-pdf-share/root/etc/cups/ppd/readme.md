# File in /etc/cups/ppd Directory

## PDF.ppd

PostScript printer definition file. You may use (1) step by step
method or (2) using install command to setup.

```bash
# (1) Step by step method.
sudo cp --preserve=timestamps PDF.ppd /etc/cups/ppd/PDF.ppd
sudo chmod 640 /etc/cups/ppd/PDF.ppd
sudo chown root:lp /etc/cups/ppd/PDF.ppd
# or (2) Using install command.
sudo install -m 640 -o root -g lp -p PDF.ppd /etc/cups/ppd/PDF.ppd
```

The PDF.ppd contains some my favorite modifications.

+ (DefaultPDFVer) Set PDF version 1.4.
+ (DefaultLabel) Add job number prefix to output file name.
