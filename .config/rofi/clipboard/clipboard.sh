#!/usr/bin/env bash

## Author : Nekoy
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#

dir="$HOME/.config/rofi/clipboard"
theme='clipboard'

## Run
cliphist list | rofi -dmenu -p "󰅇 " -theme ${dir}/${theme}.rasi| cliphist decode | wl-copy
