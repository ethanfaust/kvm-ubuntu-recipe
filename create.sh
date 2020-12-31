#!/bin/bash
set -x

name=template

virt-install --connect qemu:///system\
        --network bridge:br0 \
        --extra-args "console=tty0 console=ttyS0,115200" \
        --name $name \
        --disk /local1/vm/$name/disk,size=100 \
  --location 'http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/' \
  --virt-type kvm \
  --os-type linux \
  --os-variant ubuntu18.04 \
        --ram 4096 \
        --vcpus 2 \
        --check-cpu \
        --accelerate \
        --hvm \
        --nographics
