#!/bin/bash
function run() {
  # check if the program is installed and executable
  if which "$1" > /dev/null; then
    # check if the program is already running
    if ! pgrep -f "$1" > /dev/null; then
      # execute the program if it is not running
      eval "$@" &
    fi
  else
    # output an error message if the program is not installed or executable
    echo "Error: program $1 is not installed or executable."
  fi
}
#run xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#run xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#autorandr horizontal
run nm-applet
run redshift -l 53.55073:9.99302
run xfce4-clipman
#run caffeine
run pamac-tray
run variety
run xfce4-power-manager
run blueberry-tray
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon
#run nitrogen --restore
run conky -c $HOME/.config/awesome/system-overview
#you can set wallpapers in themes as well
run feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &
run udiskie -a -s --terminal=Alacrityy

#run applications from startup
#run firefox
#run atom
#run dropbox
#run insync start
#run spotify
#run ckb-next -b
#run discord
#run telegram-desktop
