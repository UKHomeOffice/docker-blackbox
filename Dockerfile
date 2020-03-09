FROM debian:9.1

ENV BLACKBOX_VERSION v1.20181219
ENV GPG=gpg2

RUN apt-get update && \
    apt-get install -y build-essential git gnupg2
RUN cd $HOME && \
    git clone https://github.com/StackExchange/blackbox.git && \
    cd blackbox && \
    git checkout $BLACKBOX_VERSION && \
    git reset --hard && \
    make copy-install && \
    cd $HOME && \
    rm -rf blackbox

CMD bash