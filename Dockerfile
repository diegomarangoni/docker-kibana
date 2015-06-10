FROM debian:jessie

MAINTAINER "Diego Marangoni" <diegomarangoni@me.com>

ENV KIBANA_VERSION 4.0.2

RUN apt-get update && apt-get install -y curl tar

RUN uname -m | grep -ciq 'x86_64' && ARCH="x64" || ARCH="x86" \
    && curl -SL "https://download.elastic.co/kibana/kibana/kibana-$KIBANA_VERSION-linux-$ARCH.tar.gz" -o kibana.tar.gz \
    && mkdir -p /opt/kibana \
    && tar -xf kibana.tar.gz -C /opt/kibana --strip-components=1 \
    && rm kibana.tar.gz

EXPOSE 5601

CMD ["/opt/kibana/bin/kibana"]
