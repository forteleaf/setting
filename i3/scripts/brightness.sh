#!/bin/bash
#xrandr --verbose | grep -i brightness | cut -f2 -d ' ' | head -n1
brightnessctl | grep Current | cut -f4 -d ' '
