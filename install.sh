#!/bin/bash

ln -sf "$HOME/dotfiles/vim/.vimrc" "$HOME/.vimrc"

rm -rf "$HOME/.config/X11"
ln -sf "$HOME/dotfiles/X11" "$HOME/.config"

rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"

ln -sf "$HOME/dofiles/redshift/redshift.conf" "$HOME/.config/redshift.conf"

mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
