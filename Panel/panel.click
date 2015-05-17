#!/bin/sh

# ObliviousGmn, May 2015
# https://github.com/ObliviousGmn
# Panel for Lemonbar..

. $HOME/Gmnbox/Panel/bar_config

 ws(){
  ws=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')
	echo "%{F$YELLOW}${ws}"
}

 menu(){
	echo "%{B$BLUE}%{F$BG} GMN  %{B-}%{F-}"
}

 temp(){
  temp=$(sensors | awk '/Core 0/ {print +$3}')
	echo "%{F$BLUE}  %{F-}%{F$YELLOW} ${temp}°"
}
	
 fan(){
  fan=$(sensors | awk '/fan1/ {print $2,$3}')
	echo "%{F$BLUE}  %{F-}%{F$YELLOW} ${fan}"
}

 clock(){
  clock=$(date "+%b %d %Y %I:%M")
	echo "%{F$BLUE}  %{F-}%{F$YELLOW} ${clock}"
}

 vol(){
  switch=$(amixer get Master | awk '/Mono:/ {print $6}')
  vol=$(amixer get Master | awk '/Mono:/ {print $4}' | tr -d '[]%,')
  hsvol=$(amixer get PCM | awk '/Mono:/ {print $4}' | tr -d '[]%,')

  if [ "$switch" = "[on]" ]; then
	echo "%{F$BLUE}  %{F-}%{F$YELLOW} ${vol}"
  elif [ "$switch" = "[off]" ]; then
	echo "%{F$RED}  %{F-}%{F$YELLOW} MUTE"
  else
	echo "%{F$BLUE}  %{F-}%{F$YELLOW} ${hsvol} "
  fi
}

 mus(){
  mus=$(ncmpcpp --now-playing)

  if [[ $mus ]]; then
 	echo "%{F$BLUE}  %{F-}%{F$YELLOW} ${mus}"
  else
	echo
  fi
}

click(){
	echo " %{A:urxvt -e vim ~/notes.txt:}test%{A} "
}

# net(){
#  test -n "`ip route`" && echo "Connected" || echo "Disconnected"
#}

while :; do 	
	echo " $(ws) $(menu) $(click) $(vol) %{c}$(mus) %{r}$(temp) $(fan) $(clock) "
         sleep 0.5	
done | lemonbar -g ${PW}x${PH}+${PX}+${PY} -f "$FONT1" -f "$FONT4" -B "$BG" -F "$FG" -p | \
	while read line; do eval "$line"; done &

