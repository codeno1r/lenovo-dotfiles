#!/usr/bin/env bash

export PATH="$HOME/depot_tools:$PATH"

export LIBVIRT_DEFAULT_URI="qemu:///session"

eval "$(starship init bash)"

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# fastfetch --kitty-direct /home/codenoir/Pictures/fairtytaillogo.png
fastfetch

alias ll="ls -la --color=auto"
alias ff="fastfetch"
alias yi="yazi"
alias inv='interactivenvim.sh'
alias deltemp='sudo pacman -Rns $(pacman -Qdtq)'
alias mdb="mongosh "mongodb+srv://cluster0.xy0sq.mongodb.net/" --apiVersion 1 --username gvarrworks --password A1APwwOLA2Z2O5ks"
alias code="code --force-device-scale-factor=1.25"
