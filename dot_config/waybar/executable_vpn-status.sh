if [ -d /proc/sys/net/ipv4/conf/tun0 ]; then
  echo '{"class": "connected", "alt": "connected"}'
else
  echo '{"class": "disconnected", "alt": "disconnected"}'
fi
