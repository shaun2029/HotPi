#!/bin/sh
echo "Building for ARM ..."
!/bin/sh
if [ $1 = "" ]; then
  CPU=`grep -c ^processor /proc/cpuinfo`
else
  CU=$1
fi

export CCACHE_DIR=/media/Data/Temp/ccache-openelec-pi
export CONCURRENCY_MAKE_LEVEL=$CPU
PROJECT=RPi2 ARCH=arm nice -n 15 make release

