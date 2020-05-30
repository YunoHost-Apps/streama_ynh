#!/bin/bash
#
# About: Convert movies automatically
# Author: liberodark
# Thanks : 
# License: GNU GPLv3

version="0.2.3"

echo "Welcome on Convert Movies Script $version"

#=================================================
# RETRIEVE ARGUMENTS FROM THE MANIFEST AND VAR
#=================================================

lock="/tmp/convert_movies.lock"

exec 9>"${lock}"
flock -n 9 || exit

usage ()
{
     echo "usage: convert_movies -ffmpeg"
     echo "options:"
     echo "-ffmpeg: Convert with ffmpeg"
     echo "-avidemux: Convert with avidemux"
     echo "-mencoder: Convert with mencoder"
     echo "-avconv: Convert with avconv"
     echo "-h: Show help"
}

ffmpeg_convert(){
while IFS= read -r -d '' file
do
  ffmpeg -nostdin -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  rm -f "$file"
done <   <(find /home/yunohost.app/streama/upload/ -name '*.mkv' -print0 -o -name '*.avi' -print0)
chown -R streama:users /home/yunohost.app/streama/upload/
}

avidemux_convert(){
video_codec="x264"
audio_codec="FDK_AAC"
output_format="MP4"
while IFS= read -r -d '' file
do
  avidemux3_cli --load "$file" --output-format "$output_format" --video-codec "$video_codec" --audio-codec "$audio_codec" --save "${file%.*}.mp4" --quit
  rm -f "$file"
done <   <(find /home/yunohost.app/streama/upload/ -name '*.mkv' -print0 -o -name '*.avi' -print0)
chown -R streama:users /home/yunohost.app/streama/upload/
}

mencoder_convert(){
while IFS= read -r -d '' file
do
  mencoder "$file" -o "${file%.*}.mp4" -ovc lavc -oac lavc
  rm -f "$file"
done <   <(find /home/yunohost.app/streama/upload/ -name '*.mkv' -print0 -o -name '*.avi' -print0)
chown -R streama:users /home/yunohost.app/streama/upload/
}

avconv_convert(){
while IFS= read -r -d '' file
do
  avconv -i "$file" -c:v h264 -c:a aac "${file%.*}.mp4"
  rm -f "$file"
done <   <(find /home/yunohost.app/streama/upload/ -name '*.mkv' -print0 -o -name '*.avi' -print0)
chown -R streama:users /home/yunohost.app/streama/upload/
}

parse_args ()
{
    while [ $# -ne 0 ]
    do
        case "${1}" in
            -ffmpeg)
                shift
                ffmpeg_convert >&2
                ;;
            -avidemux)
                shift
                avidemux_convert >&2
                ;;
            -mencoder)
                shift
                mencoder_convert >&2
            -avconv)
                shift
                avconv_convert >&2
            -h|--help)
                usage
                exit 0
                ;;
            *)
                echo "Invalid argument : ${1}" >&2
                usage >&2
                exit 1
                ;;
        esac
        shift
    done

}

parse_args "$@"
