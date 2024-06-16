#!/bin/bash

Max=$(brightnessctl max)
brightness=$(brightnessctl get)
echo "$(( 100*$brightness/$Max ))"
