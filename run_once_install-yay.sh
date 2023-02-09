#!/bin/sh
if [ ! -f "$(which yay)" ]; then
  cd /tmp && sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
fi
