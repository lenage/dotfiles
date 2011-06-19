if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
      xinit
      logout
fi
. $HOME/.bashrc
export MOZ_DISABLE_PANGO=1
source ~/.local/bin/bashmarks.sh

