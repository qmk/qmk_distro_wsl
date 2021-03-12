FROM qmkfm/base_container

RUN apt update && apt install --no-install-recommends -y \
    vim \
    nano \
    curl \
    cron \
    python3-dialog \
    sudo \
    gnupg2 \
    apt-transport-https \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O - https://access.patrickwu.space/wslu/public.asc | sudo apt-key add - && \
    echo "deb https://access.patrickwu.space/wslu/debian buster main" | sudo tee -a /etc/apt/sources.list && \
    apt update && apt install --no-install-recommends -y  wslu

RUN sed -i '3,9d' /etc/profile

RUN chmod -R 0755 /etc/sudoers.d && chmod -R 0440 /etc/sudoers.d/*
RUN groupadd qmk && \
    useradd -m -g qmk -s /bin/qmk-admin -p $(openssl passwd -1 'qmk') qmk

ARG BUILD_SHA=0
ARG BUILD_VERSION="0.0.0"
RUN printf "VERSION_ID=${BUILD_SHA}\nVERSION=${BUILD_VERSION}\n" >> /etc/qmk-release

COPY src /
