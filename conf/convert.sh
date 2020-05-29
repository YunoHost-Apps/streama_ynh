#! /bin/bash
while IFS= read -r -d '' file
do
  ffmpeg -nostdin -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  rm -f "$file"
done <   <(find /home/yunohost.app/streama/ -name '*.mkv' -print0 -o -name '*.avi' -print0)
