FROM mikaelkuhn/ubuntu

MAINTAINER Mikael Kühn <mk@plan24x7.com>

# Install 
RUN curl http://download.geteventstore.com/binaries/EventStore-OSS-Linux-v3.0.3.tar.gz | tar xz -C /opt

EXPOSE 2113
EXPOSE 1113

VOLUME /data/db
VOLUME /data/logs

ENV EVENTSTORE_MAX_MEM_TABLE_SIZE 100000
ENV EVENTSTORE_WORKER_THREADS 12

WORKDIR /opt/EventStore-OSS-Linux-v3.0.3

CMD ./run-node.sh --http-prefixes=http://*:2113/ --ext-ip=0.0.0.0 \
--db /data/db --log /data/logs --run-projections=all