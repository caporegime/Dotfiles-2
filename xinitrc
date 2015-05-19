# ObliviouGmn, April 2015
# https://github.com/ObliviousGmn
# Xinitrc 

# Graphics card is way too bright by default 
 xrandr --output VGA1 --brightness 0.95 &

# Torrent alert loop 
 while :; do Alertpp; sleep 30; done &

# Enable hotkeys
 sxhkd &

# Custom Fonts
 xsetroot -cursor_name left_ptr
 xset +fp /usr/share/fonts/local
 xset +fp /usr/share/fonts/artwiz-fonts
 xset +fp $HOME/.fonts
 xset fp rehash

# Wall & Docks
 hsetroot -fill /home/oblivious/Media/Walls/Grasslady.jpg -tint '#CCCCCC'
 $HOME/Gmnbox/Panel/panel & 

# Shadow
 (sleep 3s && compton -c -t-5 -l-5 -r3 -o.45) &

# Misc
 (sleep 4s && numlockx) &

# Windows
 exec 2bwm
# 2bwm &
# urxvt 

