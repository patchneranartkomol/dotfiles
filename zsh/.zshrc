source "$XDG_CONFIG_HOME/zsh/aliases"

fpath=($ZDOTDIR/external $fpath)

autoload -Uz compinit; compinit
# autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz prompt_purification_setup && prompt_purification_setup
autoload -Uz cursor_mode && cursor_mode

# Push the current directory visited onto the stack
setopt AUTO_PUSHD
# Do not store duplicate directories in stack
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after pushd or popd
setopt PUSHD_SILENT

# vi bindings
bindkey -v
export KEYTIMEOUT=1

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# Zsh does not read .inputrc for beep/bell settings
# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
# unsetopt LIST_BEEP

# startx immediately after login
if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi
