FROM openjdk:8-jdk

MAINTAINER Tokyo Home SOC <github@homesoc.tokyo>

ARG CEREBRO_VERSION=0.6.1

RUN \
       curl -fSL https://github.com/lmenezes/cerebro/releases/download/v${CEREBRO_VERSION}/cerebro-${CEREBRO_VERSION}.tgz \
        -o cerebro-${CEREBRO_VERSION}.tgz \
    && tar -zxC ./ -f cerebro-${CEREBRO_VERSION}.tgz \
    && rm cerebro-${CEREBRO_VERSION}.tgz \
    && mv cerebro-${CEREBRO_VERSION} cerebro

COPY docker-entrypoint.sh /cerebro

WORKDIR /cerebro

EXPOSE 80
ENTRYPOINT ["/cerebro/docker-entrypoint.sh"]