FROM       tecnositaf/nifi-base:1.6.0
MAINTAINER Alexandru Grigoras <alexandru.grigoras86@gmail.com>
ENV        BANNER_TEXT="" \
           S2S_PORT="" \
           HEARTBEAT_INTERVAL="5 sec" \
           CONNECTION_TIMEOUT="5 sec"
COPY       start_nifi.sh /${NIFI_HOME}/
VOLUME     /opt/datafiles \
           /opt/scriptfiles \
           /opt/certfiles
RUN        chmod +x ./start_nifi.sh
CMD        ./start_nifi.sh
