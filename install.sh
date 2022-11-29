#!/bin/bash
ln -sf "$DOTFILES/vim/.vimrc" "$HOME/.vimrc"
ln -s "$DOTFILES/nvim/init.lua" "$XDG_CONFIG_HOME/nvim/init.lua"
ln -s "$DOTFILES/nvim/lua/" "$XDG_CONFIG_HOME/nvim/lua"

rm -rf "$XDG_CONFIG_HOME/X11"
ln -sf "$DOTFILES/X11" "$XDG_CONFIG_HOME"

rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"

ln -sf "$DOTFILES/redshift/redshift.conf" "$XDG_CONFIG_HOME/redshift.conf"

mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

# Link specific RC files - kept in /user
ln -sf "$DOTFILES/user/.inputrc" "$HOME/.inputrc"
