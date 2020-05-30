#!/bin/bash
#
# About: Convert movies automatically
# Author: liberodark
# Thanks : 
# License: GNU GPLv3

version="0.1.0"

#=================================================
# RETRIEVE ARGUMENTS FROM THE MANIFEST AND VAR
#=================================================

lock="/tmp/wp-sync.lock"

exec 9>"${lock}"
flock -n 9 || exit

while IFS= read -r -d '' file
do
  ffmpeg -nostdin -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  rm -f "$file"
done <   <(find /home/yunohost.app/streama/ -name '*.mkv' -print0 -o -name '*.avi' -print0)
