FROM qmkfm/base_container

RUN apt-get update && apt-get install --no-install-recommends -y \
    vim \
    nano \
    curl \
    cron \
    python3-dialog \
    sudo \
    rsync \
    gnupg2 \
    apt-transport-https \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade milc qmk 

RUN wget -O - https://access.patrickwu.space/wslu/public.asc | sudo apt-key add - && \
    echo "deb https://access.patrickwu.space/wslu/debian buster main" | sudo tee -a /etc/apt/sources.list && \
    apt-get update && apt-get install --no-install-recommends -y  wslu

RUN chmod -R 0755 /etc/sudoers.d && chmod -R 0440 /etc/sudoers.d/*
RUN groupadd qmk && \
    useradd -m -g qmk -s /bin/qmk-admin -p $(openssl passwd -1 'qmk') qmk

COPY src /
