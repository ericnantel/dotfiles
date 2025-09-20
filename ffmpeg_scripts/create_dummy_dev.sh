#!/usr/bin/env bash
# You need to run
# sudo apt install v4l2loopback-utils v4l2loopback-dkms ffmpeg
# once and restart your computer after that so that it reloads
# the kernel (just in case)
#
# Create a dummy device
sudo modprobe v4l2loopback devices=1 exclusive_caps=1
