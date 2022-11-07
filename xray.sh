#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a4eefa77-15d0-4c64-8438-db9583e5fc9a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

