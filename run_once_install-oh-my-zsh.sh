#!/bin/sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

if [ ![-d "/usr/share/zsh/plugins/zsh-autosuggestions" && -d "/usr/share/zsh/plugins/zsh-syntax-highlighting/"] ]; then
  sudo pacman -S --needed zsh-autosuggestions zsh-syntax-highlighting zsh
fi

cp -r /usr/share/zsh/plugins/zsh-* ~/.oh-my-zsh/custom/plugins/
