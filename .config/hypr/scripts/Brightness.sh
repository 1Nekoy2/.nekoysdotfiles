#!/bin/bash

Max=$(brightnessctl max)
brightness=$(brightnessctl get)
echo "Brightness: $(( 100*$brightness/$Max ))%"
