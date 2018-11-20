#!/bin/sh
if [ "$1" = "" ]; then
  CPU=`grep -c ^processor /proc/cpuinfo`
else
  CPU="$1"
fi

export CCACHE_DIR=/media/Data/Temp/ccache-openelec-pi1
export CONCURRENCY_MAKE_LEVEL=$CPU
PROJECT=RPi ARCH=arm nice -n 20 make release

