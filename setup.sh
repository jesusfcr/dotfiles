#!/usr/bin/env bash

mkdir -p ~/.config

# Ensures zsh gets the config from $HOME/.config/zsh
if [[ "$ZDOTDIR" != "$XDG_CONFIG_HOME/zsh" ]]; then
  echo '
if [[ -z "$XDG_CONFIG_HOME" ]]
then
        export XDG_CONFIG_HOME="$HOME/.config"
fi

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
' | sudo tee -a  /etc/zsh/zshenv
fi


stow .

