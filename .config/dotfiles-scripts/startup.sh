#!/bin/bash

# #######################################################################################
#
#
#  ███████╗████████╗ █████╗ ██████╗ ████████╗██╗   ██╗██████╗ 
#  ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝██║   ██║██╔══██╗
#  ███████╗   ██║   ███████║██████╔╝   ██║   ██║   ██║██████╔╝
#  ╚════██║   ██║   ██╔══██║██╔══██╗   ██║   ██║   ██║██╔═══╝ 
#  ███████║   ██║   ██║  ██║██║  ██║   ██║   ╚██████╔╝██║     
#  ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝     
#                                                             
# by Nekoy
# #######################################################################################

# WALLPAPERS PATH
wallDIR="$HOME/Pictures/Wallpapers"

# set variables
username=$(whoami)
FPS=60
TYPE="fade"
DURATION=1
SWWW_PARAMS="--transition-fps $FPS --transition-type $TYPE --transition-duration $DURATION"
PICS=($(ls "${wallDIR}" | grep -E ".jpg|.jpeg|.png|.gif" | sort -R ))

notify-send "Hello $username!"
sleep 1 

if [ -z "$(ls "${wallDIR}" | grep -E ".jpg|.jpeg|.png|.gif" )" ]; then
    notify-send "No Wallpapers found" 
else
    swww img "${wallDIR}/${PICS}" $SWWW_PARAMS
fi
