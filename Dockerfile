FROM qmkfm/base_container

RUN apt-get update && apt-get install --no-install-recommends -y \
    vim \
    nano \
    curl \
    sudo \
    && rm -rf /var/lib/apt/lists/*

COPY src /

RUN chmod -R 0755 /etc/sudoers.d && chmod -R 0440 /etc/sudoers.d/*
RUN groupadd qmk

RUN sed -i '3,9d' /etc/profile

ARG BUILD_SHA=0
ARG BUILD_VERSION="0.0.0"
RUN printf "VERSION_ID=${BUILD_SHA}\nVERSION=${BUILD_VERSION}\n" >> /etc/qmk-release
