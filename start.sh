#!/bin/sh
set -e

if [ ! -f "/wln/ngrokd" ]; then
    echo "ngrokd is not build,will be build it now..."
    /bin/sh /build.sh
	chmod 777 /wln/ngrokd
fi
/wln/ngrokd -tlsKey=/cert/server.key -tlsCrt=/cert/server.crt -domain="${DOMAIN}" -httpAddr=":8080" -httpsAddr=":8443" -tunnelAddr=":4443"
