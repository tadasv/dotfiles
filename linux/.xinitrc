#!/bin/sh
#
xset r rate 200 30
xrdb /home/tadas/.Xresources

# remap capslock to ctrl
setxkbmap -option ctrl:nocaps

# ~/.fehbg &
# xsetroot -fg '#233' -bg '#233' -solid '#233'

if [ -x /usr/bin/autocutsel ]; then
	#this will keep the clipboard in sync
	#   with the primary buffer
	autocutsel -selection CLIPBOARD -fork
	
	#this will keep the primary in sync
	#   with the clipboard buffer
	autocutsel -selection PRIMARY -fork
fi

if [ -x /usr/bin/xmms2d ]; then
	/usr/bin/xmms2d &
fi

if [ -x /usr/bin/dunst ]; then
	# starts notification daemon so we can receive notification sent
	# with notify-send
	/usr/bin/dunst &
fi

if [ -x $HOME/bin/pomomon.sh ] ; then
	# starts pomodoro monitor
	$HOME/bin/pomomon.sh &
fi

exec i3
