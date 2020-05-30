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

lock="/tmp/convert_movies.lock"

exec 9>"${lock}"
flock -n 9 || exit

usage ()
{
     echo "usage: -ffmpeg or -avidemux"
     echo "options:"
     echo "-ffmpeg: Convert with ffmpeg"
     echo "-remove: Convert with avidemux"
     echo "-h: Show help"
}

ffmpeg_convert(){
while IFS= read -r -d '' file
do
  ffmpeg -nostdin -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  rm -f "$file"
done <   <(find /home/yunohost.app/streama/ -name '*.mkv' -print0 -o -name '*.avi' -print0)
}

avidemux_convert(){
VIDEOCODEC="mp4"
AUDIOCODEC="aac"
while IFS= read -r -d '' file
do
  #ffmpeg -nostdin -i "$file" -vcodec h264 -acodec aac -strict -2 "${file%.*}.mp4"
  avidemux3_cli --video-codec $VIDEOCODEC --audio-codec $AUDIOCODEC --force-alt-h264 --load "$file" --save "${file%.*}.mp4" --quit
  rm -f "$file"
done <   <(find /home/yunohost.app/streama/ -name '*.mkv' -print0 -o -name '*.avi' -print0)
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
