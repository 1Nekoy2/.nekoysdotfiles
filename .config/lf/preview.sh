#!/usr/bin/env bash
file=$1
w=$2
h=$3
x=$4
y=$5

preview() {
    kitty +kitten icat --silent --stdin no --transfer-mode file --place "${w}x${h}@${x}x${y}" "$1" < /dev/null > /dev/tty
}

TEMPDIR=~/.cache

case "$file" in
*.tar*) tar tf "$file" ;;
*.zip) unzip -l "$file" ;;
*.rar) unrar l "$file" ;;
*.7z) 7z l "$file" ;;
*.avi|*.mp4|*.mkv)
	thumbnail="$TEMPDIR/thumbnail.png"
	ffmpeg -y -i "$file" -vframes 1 "$thumbnail"
    preview "$thumbnail"
	;;
*.pdf)
    thumbnail="$TEMPDIR/thumbnail.png"
	gs -o "$thumbnail" -sDEVICE=png256 -dLastPage=1 "$file" >/dev/null
    preview "$thumbnail"
	;;
*.jpg|*.jpeg|*.png|*.bmp|*.gif)
    preview "$file"
    ;;
*.ttf|*.otf|*.woff)
	thumbnail="$TEMPDIR/thumbnail.png"
	fontpreview -i "$file" -o "$thumbnail"
	preview "$thumbnail"
	;;
*.svg)
	thumbnail="$TEMPDIR/thumbnail.png"
	convert "$file" "$thumbnail"
	preview "$thumbnail"
	;;
*) pistol "$file" ;;
esac
return 127 # nonzero retcode required for lf previews to reload

