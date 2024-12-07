#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# Gray window,applications not resizing with WM, menus immediately closing in Arch Java Environment
export _JAVA_AWT_WM_NONREPARENTING=1

exec /usr/local/bin/dwm
# exec /usr/bin/docker run -it --name dwm --rm -v /home:/home -v /usr:/usr -v /etc:/etc -v /tmp/.X11-unix:/tmp/.X11-unix  -e DISPLAY=:0 -u briq briq/dwm

