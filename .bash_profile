if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
      xinit
      logout
fi
. $HOME/.bashrc

