FROM perl:5.24.1
LABEL maintainer "Philippe Poumaroux <poum@cpan.org>"

RUN cpanm install Dist::Zilla \
    && rm -rf /root/.cpanm /tmp/*

CMD {"dzil"]
