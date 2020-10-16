#!/bin/bash

intern=eDP-1
extern=HDMI-1

if [ $1 == "intern" ];then
    xrandr --output "$extern" --off --output "$intern" --auto
elif [ $1 == "both" ];then
    xrandr --output "$intern" --auto --primary --output "$extern" --auto --left-of "$intern"
else
    if xrandr | grep "$extern disconnected"; then
        xrandr --output "$extern" --off --output "$intern" --auto
    else
        xrandr --output "$intern" --off --output "$extern" --auto
    fi
fi

