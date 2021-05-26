#!/bin/sh
#
#~/.xinitrc
#
# Executed by startx (run your window manager from here)

xset +fp ~/.local/share/fonts
[[ -f ~/.config/X11/.Xresources ]] && xrdb -merge -I$HOME ~/.config/X11/.Xresources

# Start URxvt Daemon process
urxvtd -o -q -f

udiskie &

# Start i3 at the end of file - after resources loaded
exec i3
