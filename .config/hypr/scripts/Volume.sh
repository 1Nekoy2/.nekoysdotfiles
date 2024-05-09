#!/bin/bash

Sound=$(amixer sget Master | awk -F"[][]" '/Left:/ { print $2 }' | sed 's/.\{1\}$//')

echo "$(( 100*$Sound/150 ))" 
