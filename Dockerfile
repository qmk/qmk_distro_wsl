FROM ghcr.io/qmk/qmk_cli:1.2.0

RUN apt-get update && apt-get install --no-install-recommends -y \
    bash-completion \
    cron \
    curl \
    gnupg2 \
    jq \
    less \
    locales \
    nano \
    procps \
    python3-dialog \
    python3-fuzzywuzzy \
    ripgrep \
    rsync \
    sudo \
    tree \
    vim \
    apt-transport-https \
    && rm -rf /var/lib/apt/lists/*

RUN update-locale LANG=C.UTF-8

RUN groupadd qmk && \
    useradd -m -g qmk -s /bin/bash -p $(openssl passwd -1 'qmk') qmk

COPY src/ /workdir/

RUN rsync -av --keep-dirlinks /workdir/ / && rm -rf /workdir

RUN rm -f /opt/qmk/etc/flashutils_release* && mv /opt/qmk/bin/flashutils_release* /opt/qmk/etc/

RUN chmod -R 0755 /etc/sudoers.d && chmod -R 0440 /etc/sudoers.d/* && \
    chown -R qmk:qmk /home/qmk
