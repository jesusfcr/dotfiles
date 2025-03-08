#!/usr/bin/env bash

sudo apt update

sudo apt upgrade git htop tree fzf

curl -L https://github.com/dandavison/delta/releases/download/0.18.2/delta-0.18.2-x86_64-unknown-linux-gnu.tar.gz -s | sudo tar xzvf - --strip 1 -C /usr/local/bin --wildcards "*/delta"

# Install oh-my-zsh without updating zsh
if [ ! -d /home/jesus/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi
