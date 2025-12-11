#!/bin/bash

svol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
vol=${svol:8:11}
dec=$(bc <<< $vol*100)
echo ${dec%.*} > /tmp/wobpipe
