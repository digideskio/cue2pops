FROM jess/wine
MAINTAINER Morgan Auchede <morgan.auchede@gmail.com>

COPY CUE2POPS_v2.0.zip /tmp/CUE2POPS_v2.0.zip

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends unzip \
    && unzip /tmp/CUE2POPS_v2.0.zip -d /opt \
    && mv /opt/CUE2POPS_v2.0 /opt/cue2pops \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
