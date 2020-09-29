FROM puppet/pdk
MAINTAINER Cyberious

RUN mkdir /scripts/
RUN apt update && apt install ssh -y

COPY spec.sh /scripts/spec.sh
RUN chmod +x /scripts/spec.sh

WORKDIR /scripts/

ENTRYPOINT ["/scripts/spec.sh", "pdk"]