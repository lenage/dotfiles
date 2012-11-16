if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty2 ]]; then
      xinit
      logout
fi

