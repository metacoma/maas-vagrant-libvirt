FROM ubuntu:bionic
RUN apt-get update                                        &&         \
  apt-get install --no-install-recommends -qy vagrant vagrant-libvirt python-pip
RUN apt-get install -qy ansible

