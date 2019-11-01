#!/bin/bash

sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe" &&
sudo apt update &&
sudo apt install bash util-linux procps hostapd iproute2 iw wireless-tools haveged iptables dnsmasq git openvpn &&
git clone https://github.com/oblique/create_ap.git
cd create_ap &&
sudo make install &&
sudo create_ap wlp61s0 wlp61s0 $1 $2
# $1 = ssid, $2 = ap password

