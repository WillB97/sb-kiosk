#!/bin/bash
set -eux -o pipefail

# Update apt sources
cat >/etc/apt/sources.list <<EOF
deb http://legacy.raspbian.org/raspbian/ buster main contrib non-free rpi
#deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi
# Uncomment line below then 'apt-get update' to enable 'apt-get source'
#deb-src http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi
EOF

export DEBIAN_FRONTEND=noninteractive

apt-get -y update

# Package install
apt-get -y install \
    nano \
    vim \
    htop \
    git
