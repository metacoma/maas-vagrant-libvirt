FROM ubuntu:bionic
RUN apt-get update                                        &&         \
  apt-get install --no-install-recommends -qy vagrant vagrant-libvirt python-pip
RUN apt-get install -qy ansible
ADD ansible /opt/playbook
ADD vagrant/Vagrantfile /vagrant/Vagranfile
RUN ansible-galaxy install -r /opt/playbook/requirements.yml
ENTRYPOINT ["vagrant", "up"]
