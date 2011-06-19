#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
export LC_LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec ck-launch-session dbus-launch openbox-session
#exec ck-launch-session gnome-session
#exec awesome
syndaemon -t -i 2 &
xcreensaver -no-splash &
