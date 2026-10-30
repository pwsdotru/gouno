FROM eclipse-temurin:27_35-jdk-resolute

LABEL org.opencontainers.image.title="libreoffice-docker"
LABEL org.opencontainers.image.description="Container image that contains libreoffice for work with UNO"
LABEL org.opencontainers.image.licenses="MIT"

RUN apt-get update

RUN apt-get install -y \
    bash curl \
    libreoffice

RUN apt-get install -y \
    fonts-noto \
    fonts-noto-cjk \
    fonts-freefont-ttf \
    fonts-terminus \
    fonts-font-awesome

RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections && \
    apt-get install -y ttf-mscorefonts-installer

RUN fc-cache -f -r -v

RUN rm -rf /var/lib/apt/lists/* /tmp/*

VOLUME ["/data"]
EXPOSE 2002
ENTRYPOINT ["/entry.sh"]
