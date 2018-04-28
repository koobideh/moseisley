FROM basevpn

RUN apk --no-cache add \
    python2 \
    python2-dev \
    py2-pip \
    build-base \
    libffi-dev \
    openssl-dev \
    unrar \
    unzip \
    p7zip

RUN pip install cheetah
RUN pip install cryptography
RUN pip install sabyenc==3.3.1

WORKDIR /packages
RUN wget https://github.com/Parchive/par2cmdline/releases/download/v0.8.0/par2cmdline-0.8.0.tar.gz
RUN tar -zxvf par2cmdline-0.8.0.tar.gz
WORKDIR par2cmdline-0.8.0
RUN ./configure
RUN make
RUN make install

VOLUME /volumes/appdata/sabnzbd
VOLUME /volumes/downloads
EXPOSE 8080

WORKDIR /packages
RUN wget https://github.com/sabnzbd/sabnzbd/releases/download/2.3.2/SABnzbd-2.3.2-src.tar.gz
RUN tar -zxvf SABnzbd-2.3.2-src.tar.gz
RUN mv SABnzbd-2.3.2 sabnzbd

WORKDIR /
ADD entrypoint.sh .
CMD ["./entrypoint.sh"]
