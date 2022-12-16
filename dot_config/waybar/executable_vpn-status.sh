if [ $(nmcli | grep "gpd0: conectado" | wc -c) -ne 0 ]; then
  status=connected
else
  status=disconnected
fi;

echo "{\"class\": \"$status\", \"alt\": \"$status\"}"
