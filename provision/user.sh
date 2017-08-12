#!/bin/bash

# Download and pre-configure any source code which might be interesting to
# Personal Telco Project developers.


provision="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

set -e

# Personal Telco Project source code.
[ ! -d ptp-cab ] && git clone git://github.com/personaltelco/ptp-cab.git
[ ! -d ptp-openwrt-files ] && \
    git clone git://github.com/personaltelco/ptp-openwrt-files.git
[ ! -d ptp-splash-server ] && \
    git clone git://github.com/personaltelco/ptp-splash-server.git
[ ! -d ptp-splash-page ] && \
    git clone git://github.com/personaltelco/ptp-splash-page.git

# OpenWrt buildroot.
[ ! -d openwrt ] && git clone git://git.openwrt.org/openwrt.git

cd openwrt
scripts/feeds update

cp "${provision}/feeds.conf" .
scripts/feeds update -a
scripts/feeds install -a
