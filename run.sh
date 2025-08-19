#!/bin/bash
echo "Starte JDownloader..."

EMAIL=$(jq -r '.email' /data/options.json)
PASSWORD=$(jq -r '.password' /data/options.json)

# Download-Verzeichnis auf /share/downloads setzen
DOWNLOAD_DIR=/share/downloads
mkdir -p $DOWNLOAD_DIR

# Starte JDownloader headless
exec java -Djava.awt.headless=true -jar /opt/jdownloader/JDownloader.jar \
    -myjd "${EMAIL}" "${PASSWORD}" \
    -norestart \
    -downloadpath "$DOWNLOAD_DIR"
