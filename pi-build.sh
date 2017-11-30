#!/bin/sh
export CCACHE_DIR=/media/Data/Temp/ccache-openelec-pi
export CONCURRENCY_MAKE_LEVEL=9
PROJECT=RPi ARCH=arm nice -n 15 make release

