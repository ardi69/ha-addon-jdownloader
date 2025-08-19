FROM eclipse-temurin:17-jre-alpine

WORKDIR /opt/jdownloader

# Pakete für wget und unrar (falls gewünscht)
RUN apk add --no-cache wget bash unzip unrar

# Lade den JDownloader Installer
RUN wget -O JDownloader.jar http://installer.jdownloader.org/JDownloader.jar

COPY run.sh /opt/jdownloader/run.sh
RUN chmod +x /opt/jdownloader/run.sh

CMD ["/opt/jdownloader/run.sh"]
