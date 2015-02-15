#!/bin/bash.real
# Required for dnsmasq
mkdir /var/lib/misc/
# Forward IPv4 packets for hotspot
echo 1 > /proc/sys/net/ipv4/ip_forward
# Set start volume
amixer -- sset PCM 30%
# Start radiogaga
radiogaga -p /storage/.config/ >/var/log/radiogaga.log 2>/var/log/radiogaga.err.log
# Start remote
irexec --daemon /storage/.config/lircrc.conf
# Start VPN Hotspot
vpn-start > /var/log/vpn-hotspot.log 2> /var/log/vpn-hotspot.err &

