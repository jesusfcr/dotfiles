#!/usr/bin/env bash

sudo apt update

sudo apt upgrade -y git htop tree \
  fzf zsh-autosuggestions zsh-syntax-highlighting \
  tmux \
  nvim

curl -L https://github.com/dandavison/delta/releases/download/0.18.2/delta-0.18.2-x86_64-unknown-linux-gnu.tar.gz -s | sudo tar xzvf - --strip 1 -C /usr/local/bin --wildcards "*/delta"

# Install oh-my-zsh without updating zsh
if [ ! -d /home/jesus/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install starship
sh -c "$(curl -sS https://starship.rs/install.sh)" "" -f

# Install zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

ZSH_PLUGINS="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins"
echo $ZSH_PLUGINS
if [ ! -d "${ZSH_PLUGINS}/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_PLUGINS}/zsh-autosuggestions"
fi

if [ ! -d "${ZSH_PLUGINS}/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_PLUGINS}/zsh-syntax-highlighting"
fi

if [ ! -d "$HOME/.config/tmux/plugins/tpm" ]; then
  mkdir -p "$HOME/.config/tmux/plugins"
  git clone https://github.com/tmux-plugins/tpm.git "$HOME/.config/tmux/plugins/tpm"
fi

