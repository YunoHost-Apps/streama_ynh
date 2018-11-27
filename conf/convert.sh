#! /bin/bash
for file in "$( find ./ -iname "*.mkv")"
do
  ffmpeg -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  rm "$file"
done

for file in "$( find ./ -iname "*.avi")"
do
  ffmpeg -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  rm "$file"
done
