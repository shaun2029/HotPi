#!/bin/sh
echo "Building for ARM ..."
export CCACHE_DIR=/media/Data/Temp/ccache-openelec-pi
export CONCURRENCY_MAKE_LEVEL=9
PROJECT=RPi2 ARCH=arm nice -n 5 make release

