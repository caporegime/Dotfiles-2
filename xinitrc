# Xinitrc
# Aoril 2015 | ObliviousGmn | Github
# Start up
 
# Torrent alert loop
while :; do Alertpp; sleep 30; done &

# Enable hotkeys
 sxhkd &

# Load Fonts
 xsetroot -cursor_name left_ptr
 xset +fp /usr/share/fonts/local
 xset +fp /usr/share/fonts/artwiz-fonts
 xset +fp $HOME/.fonts
 xset fp rehash

# Wall & Docks
 hsetroot -fill $HOME/Downloads/wallhaven-138315-noise.jpg -tint '#BFBFBF' 
 $HOME/Gmnbox/Panel/panel &

# Shadow
 (sleep 3s && compton -c -t-5 -l-5 -r3 -o.45) &

# Set numlock
 (sleep 4s && numlockx) &

# Load WM
 exec 2bwm
# 2bwm &
# urxvt

