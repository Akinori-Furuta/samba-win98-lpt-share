# Virtual PDF printer driver supports A4 paper size

Virtual PDF printer driver for Windows 98. The virtual PDF printer
uses GhostScript ps2pdf (pdfwrite device) converter.

+ [Driver INF file GSPDFA4.INF](./GSPDFA4.INF)
  + Install PostScript printer driver
  + Install GSPDFA4.SPD
+ [Simplified Printer Definition file GSPDFA4.SPD](./GSPDFA4.SPD)
  + Simplified /etc/cups/ppd/PDF.ppd
  + PDF.ppd defines many paper sizes, but ps2pdf can't detect
    paper size from PostScript file sent from Windows 98 clients.

If you want to use another printer driver, choose a printer
which satisfies following specifications,

+ PostScript printer
  + Prefer color printer.
+ Supports A4 paper size
  + If printer supports more paper sizes,
    select default paper size A4.
+ Supports Graphics resolution 300dpi
  + If printer supports more resolutions,
    select default resolution 300dpi.
