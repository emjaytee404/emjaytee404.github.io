#!/bin/sh

if [ -z $1 ]; then
  echo "usage: $0 <size>"
  exit 1
fi

rsvg-convert -h $1 -w $1 MJT.svg -o $1.png
optipng -quiet $1.png
