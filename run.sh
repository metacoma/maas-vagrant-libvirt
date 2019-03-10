#!/bin/sh

docker run --rm -it --network=host -v /var/run/libvirt/libvirt-sock:/var/run/libvirt/libvirt-sock -v `pwd`/vagrant:/vagrant -v `pwd`/ansible:/opt/playbook metacoma/vagrant-docker /bin/bash
