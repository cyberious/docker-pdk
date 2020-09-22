FROM puppet/pdk
MAINTAINER Cyberious

RUN mkdir /scripts/

COPY spec.sh /scripts/spec.sh
RUN chmod +x /scripts/spec.sh

WORKDIR /scripts/

ENTRYPOINT ["/scripts/spec.sh", "pdk"]