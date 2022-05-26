#!/bin/sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r /usr/share/zsh/plugins/zsh-* ~/.oh-my-zsh/custom/plugins/
