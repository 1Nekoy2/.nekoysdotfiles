#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#

dir="$HOME/.config/rofi/app"
theme='app-launcher'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
