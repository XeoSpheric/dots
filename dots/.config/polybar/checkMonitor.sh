#!/bin/bash
second=$(xrandr --query | grep '^DP1')
if [[ $second = *connected* ]]; then
    xrandr --output eDP1 --primary --mode 1920x1080 --rotate normal --output DP1 --mode 1920x1080 --rotate normal --right-of eDP1
else
    xrandr --output eDP1 --primary --mode 1920x1080 --rotate normal --output DP1 --off
fi