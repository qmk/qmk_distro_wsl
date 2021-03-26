# Frequently Asked Questions

## Why can't I flash my keyboard from within WSL?

While currently a limitation of WSL, workarounds have been included for flashing the following:

* dfu-util
* dfu-programmer
* bootloadHid
* teensy-loader-cli

The recommendation is to use [QMK Toolbox](https://github.com/qmk/qmk_toolbox) for all other supported flashing methods.

## How can I flash with QMK Toolbox?

Files within the WSL filesystem can be flashed directly by using
```
\\wsl$\QMK\home\qmk\qmk_firmware\<firmware_name.ext>
```

For example,

![toolbox](wsl_toolbox.png)

## How can I access my firmware files?

Within the WSL shell, you can run the following command to start browsing

```console
wstart ~/qmk_firmware
```

## More Coming Soon...
