#!/bin/bash

ln -sf "$HOME/dotfiles/vim/.vimrc" "$HOME/.vimrc"

rm -rf "$HOME/.config/X11"
ln -sf "$HOME/dotfiles/X11" "$HOME/.config"

rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"

ln -s "$HOME/dofiles/redshift/redshift.conf" "$HOME/.config/redshift.conf"
