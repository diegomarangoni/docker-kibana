FROM debian:jessie

MAINTAINER "Diego Marangoni" <diegomarangoni@me.com>

ENV KIBANA_VERSION 4.0.1

RUN apt-get update && apt-get install -y curl tar

RUN curl -SL "https://download.elasticsearch.org/kibana/kibana/kibana-$KIBANA_VERSION-linux-x64.tar.gz" -o kibana.tar.gz \
    && mkdir -p /opt/kibana \
    && tar -xf kibana.tar.gz -C /opt/kibana --strip-components=1 \
    && rm kibana.tar.gz

EXPOSE 5601

CMD ["/opt/kibana/bin/kibana"]
