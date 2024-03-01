FROM openjdk:23-slim

ENV JMXTERM_UBERJAR_URL=https://github.com/jiaqi/jmxterm/releases/download/v1.0.4/jmxterm-1.0.4-uber.jar

RUN apt-get update \
    && apt-get install -y ca-certificates wget \
    && update-ca-certificates \
    && wget -O /opt/jmxterm.jar $JMXTERM_UBERJAR_URL

RUN echo '#!/bin/bash\njava -jar /opt/jmxterm.jar "$@"' > /usr/local/bin/jmxterm \
    && chmod +x /usr/local/bin/jmxterm

ENTRYPOINT ["jmxterm"]
