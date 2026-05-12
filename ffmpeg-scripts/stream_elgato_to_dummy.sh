#!/usr/bin/env bash
#
# Find the dummy device file path
V4LOOP=$(v4l2-ctl --list-devices | grep Dummy -A 1 | tail -n 1 | tr -d '\t')
# V4LOOP=/dev/video0
if [[ -z "$VALOOP" ]]
then
	echo "No v4l2 loop device found"
	exit 1
else
	echo "Video4Linux loop device is $V4LOOP"
fi

# Find the cam link device file path
ELGATO=$(v4l2-ctl --list-devices | grep 'Cam Link' -A 1 | tail -n 1 | tr -d '\t')
# ELGATO=/dev/video1
if [[ -z "$ELGATOR" ]]
then
	echo "No Elgato Cam Link device found"
	exit 1
else
	echo "Elgato Cam Link loop device is $V4LOOP"
fi

# Streams the elgato to the dummy, mapping the correct pixel format
# Don't change the resolution/framerate, the driver will change it back anyway
# NOTE: -vcodec rawvideo or -codec copy ? and is there a way to make it work with mClassic upscaling ?
ffmpeg -f v4l2 -framerate 60 -pix_fmt yuyv422 -video_size 1920x1080 -i $ELGATO -f v4l2 -codec copy -pix_fmt yuv420p $V4LOOP
