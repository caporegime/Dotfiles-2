# ObliviouGmn, June 2015
# https://github.com/ObliviousGmn
# Xinitrc 

# Turn the brightness down a tad ..
 xrandr --output VGA1 --brightness 0.95 &

# If mpd is already on don't start ..
 pgrep mpd &>/dev/null || mpd 

# Torrent alert loop ..
# while :; do Alertpp; sleep 30; done &

# Enable hotkeys ..
 sxhkd &
# sxhkd -c ~/.config/sxhkd/sxhkdrc.openbox & 

# Fonts ..
 xsetroot -cursor_name left_ptr
 xset +fp /usr/share/fonts/local
 xset +fp /usr/share/fonts/artwiz-fonts
 xset +fp $HOME/.fonts
 xset fp rehash

# Wall & Bar ..
 hsetroot -fill /home/oblivious/Media/Walls/sunnyhill.png -tint '#CCCCCC'
 $HOME/Gmnbox/Panel/panel &

# Shadow .. 
 compton -c -t-5 -l-5 -r3 -o.48 &

# Misc .. 
# (sleep 4s && numlockx) &

# Run .. 
# exec openbox
# exec swm
 exec 2bwm

