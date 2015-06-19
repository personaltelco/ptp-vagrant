#!/bin/bash

# Download and pre-configure any source code which might be interesting to
# Personal Telco Project developers.


provision="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

git clone -b static-splash git://github.com/bnfinet/ptp-openwrt-files.git
git clone git://git.openwrt.org/openwrt.git

cd openwrt
scripts/feeds update

cp "${provision}/feeds.conf" .
scripts/feeds update -a
scripts/feeds install -a
