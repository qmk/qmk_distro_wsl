FROM ghcr.io/qmk/qmk_cli:latest

RUN apt-get update && apt-get install --no-install-recommends -y \
    bash-completion \
    cron \
    curl \
    jq \
    less \
    locales \
    nano \
    procps \
    python3-dialog \
    python3-fuzzywuzzy \
    rsync \
    sudo \
    vim \
    gnupg2 \
    apt-transport-https \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade pip setuptools wheel

RUN update-locale LANG=C.UTF-8

RUN groupadd qmk && \
    useradd -m -g qmk -s /bin/bash -p $(openssl passwd -1 'qmk') qmk

COPY src /

RUN chmod -R 0755 /etc/sudoers.d && chmod -R 0440 /etc/sudoers.d/* && \
    chown -R qmk:qmk /home/qmk
