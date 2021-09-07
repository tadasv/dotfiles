#!/bin/bash

# Script for downsampling video to 720p

ffmpeg -hwaccel vaapi -i $1 -s 1280x720 -preset fast $2
