#!/bin/bash
DEBIAN_MIRRORURL=http://cdimage.debian.org/debian-cd/current/amd64/iso-cd
DEBIAN_SOURCESTRING=$(curl -s $DEBIAN_MIRRORURL/SHA256SUMS | grep netinst)
DEBIAN_FILENAME=$(echo $DEBIAN_SOURCESTRING | cut -d ' ' -f2)
DEBIAN_SHA256=$(echo $DEBIAN_SOURCESTRING | cut -d ' ' -f1)
echo '{' > variables.json
echo '  "debian_iso_url": "$DEBIAN_MIRRORURL/$DEBIAN_FILENAME",' >> variables.json
echo '  "debian_iso_checksum": "$DEBIAN_SHA256"' >> variables.json
echo '}' >> variables.json
