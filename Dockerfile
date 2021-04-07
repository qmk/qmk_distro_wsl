FROM qmkfm/base_container

RUN apt-get update && apt-get install --no-install-recommends -y \
    cron \
    curl \
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

RUN update-locale LANG=C.UTF-8

RUN python3 -m pip install --upgrade milc qmk 

RUN wget -O - https://access.patrickwu.space/wslu/public.asc | sudo apt-key add - && \
    echo "deb https://access.patrickwu.space/wslu/debian buster main" | sudo tee -a /etc/apt/sources.list && \
    apt-get update && apt-get install --no-install-recommends -y wslu

RUN groupadd qmk && \
    useradd -m -g qmk -s /bin/bash -p $(openssl passwd -1 'qmk') qmk

COPY src /

RUN chmod -R 0755 /etc/sudoers.d && chmod -R 0440 /etc/sudoers.d/* && \
    chown -R qmk:qmk /home/qmk
