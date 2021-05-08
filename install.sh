#!/bin/bash

ln -sf "$HOME/dotfiles/vim/.vimrc" "$HOME/.vimrc"

rm -rf "$HOME/.config/X11"
ln -sf "$HOME/dotfiles/X11" "$HOME/.config"
