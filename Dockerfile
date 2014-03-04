# Version 0.1

FROM ubuntu
MAINTAINER Shoichi Kaji (skaji@cpan.org)

RUN apt-get update
RUN apt-get install -y --force-yes build-essential curl perl
RUN apt-get clean

RUN curl https://raw.github.com/tokuhirom/Perl-Build/master/perl-build | perl - 5.18.2 /root/perl
