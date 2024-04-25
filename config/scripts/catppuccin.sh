#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

pkgver=0.7.3
theme=Catppuccin-Macchiato-Standard-Lavender-Dark

wget https://github.com/catppuccin/gtk/releases/download/v$pkgver/$theme.zip
unzip $theme.zip
mkdir -p /usr/share/themes/
cp -r Catppuccin* /usr/share/themes/
rm -f $theme.zip
rm -rf Catppuccin*
