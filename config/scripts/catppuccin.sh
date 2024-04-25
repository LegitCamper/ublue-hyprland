#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

pkgver=0.7.3
cd /tmp
wget https://github.com/catppuccin/gtk/releases/download/v$pkgver/Catppuccin-Macchiato-Standard-Lavender-Dark.zip
unzip Catppuccin-Macchiato-Standard-Lavender-Dark.zip
rm -f Catppuccin-Macchiato-Standard-Lavender-Dark.zip
mkdir -p /usr/share/themes/
mv Catppuccin* /usr/share/themes/
