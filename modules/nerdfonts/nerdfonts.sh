#!/usr/bin/env bash
set -euo pipefail

curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
mkdir /tmp/fonts
tar -xf JetBrainsMono.tar.xz -C /tmp/fonts/
rm -f JetBrainsMono.tar.xz
mkdir -p /usr/share/fonts/JetBrainsMono_Nerd/
cp /tmp/fonts/*.ttf /usr/share/fonts/JetBrainsMono_Nerd/
rm -rf /tmp/fonts/
chown -R root /usr/share/fonts/JetBrainsMono_Nerd
chmod 644 /usr/share/fonts/JetBrainsMono_Nerd/*
# chown restorecon -vFr /usr/share/fonts/JetBrainsMono_Nerd
fc-cache -v

