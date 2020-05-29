#! /bin/bash
for file in $(find /home/yunohost.app/streama/ -iname "*.mkv" -o -iname "*.avi")
do
  ffmpeg -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  rm -f "$file"
done
