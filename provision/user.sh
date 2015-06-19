#!/bin/bash

# Download and pre-configure any source code which might be interesting to
# Personal Telco Project developers.


provision="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# Personal Telco Project source code.
git clone git://github.com/personaltelco/ptp-cab.git
git clone git://github.com/personaltelco/ptp-openwrt-files.git
git clone git://github.com/personaltelco/ptp-splash-server.git
git clone git://github.com/personaltelco/ptp-splash-page.git


# cwnmyr, the community wireless network management platform.
git clone git://github.com/keeganquinn/cwnmyr.git


# OpenWrt buildroot.
git clone git://git.openwrt.org/openwrt.git

cd openwrt
scripts/feeds update

cp "${provision}/feeds.conf" .
scripts/feeds update -a
scripts/feeds install -a
