#!/bin/sh
#
#~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.config/X11/.Xresources ]] && xrdb -merge -I$HOME ~/.config/X11/.Xresources

xset +fp ~/.local/share/fonts

# Start URxvt Daemon process
urxvtd -o -q -f

# Start Redshift
exec --no-startup-id redshift

# Start i3 at the end of file - after resources loaded
exec i3
