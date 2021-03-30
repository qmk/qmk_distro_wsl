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

![toolbox](images/wsl_toolbox.png)

## How can I access my firmware files?

Within the WSL shell, you can run the following command to start browsing

```console
wstart ~/qmk_firmware
```

## Why is `<action>` so slow?

Due to limitations with WSL2, file access can be summarized as either:

* Linux - fast but files are isolated and **might be lost** if not careful
* Windows - **extremely slow** but files are generally safer

**Linux** is the recommended user (or QMK) home directory option with automatic backups enabled.

This can re-configured with the 'Configure User' and 'Configure Backup' items within the `qmk-admin` TUI.

Or, when running `qmk setup`, ensure that it is located inside the WSL instance instead of the Windows filesystem (ie. not in /mnt) with the `-H` option. 

For more info see: https://docs.microsoft.com/en-us/windows/wsl/compare-versions

## How do I keep my environment up to date?

Periodic updates will be available to cover both major OS, and QMK CLI updates. Installing the [most recent release](https://github.com/qmk/qmk_distro_wsl/releases/latest) will ensure you have the latest requirements to build QMK firmware.

Interim updates have to be performed manually. This can done with the 'Update System' item within the `qmk-admin` TUI or by running the following commands:

```console
sudo apt update
sudo apt upgrade -y
sudo python3 -m pip install qmk --upgrade
```

## More Coming Soon...

::: tip Need help with something?
The best place to get quick support is going to be on our [Discord](https://discord.gg/Uq7gcHh). There is usually somebody online, and there are a bunch of very helpful people there.
:::
