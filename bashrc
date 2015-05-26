# ObliviousGmn, April 2015
# https://github.com/ObliviousGmn
# Bashrc

export PATH=$PATH:/home/oblivious/Gmnbox/Bin
export EDITOR=vim
export BROWSER=luakit
# export PAGER=/usr/local/bin/vimpager
# alias less=$PAGER
# alias zless=$PAGER

clear 
Gmnbox

. alias
. Manpage
. Colors
. Shortcuts

next_hue() {
	color=$(( 30 + ($RANDOM % 8) ))
	echo -ne "\e[$(( $RANDOM % 2 ));${color}m"
}	

PROMPT_COMMAND=next_hue
PS1="  -- ${Reset} "

