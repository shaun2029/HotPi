# Load driver to direct non video audio out the HDMI such as Radiogaga.
# Use if not using an attached USB audio output device.
(
#modprobe snd_bcm2835;
/usr/lib/libreelec/lircd_helper add lirc0:default:/storage/.config/lircd.conf;
# Set the startup volume.
amixer set Speaker 20%;
systemctl restart radiogaga;
# Restart Kodi if less than 100MB of RAM is free.
/usr/bin/watch-kodi 100;
# Play soft sound every 15 minutes to keep speaker alive.
/usr/bin/keep-audio-awake "/usr/share/sounds/chirp.wav";
) &

