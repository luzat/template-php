FROM luzat/php:7.2

ARG DGID=1000
ARG DUID=1000

RUN set -xe; \
  groupadd -g "$DGID" development; \
  useradd -d /var/www -M -s /bin/bash -u "$DUID" -g "$DGID" development
