#!/bin/bash

# Install all system-level packages and libraries needed to build, use and
# maintain Personal Telco Project software.


# Debian/Ubuntu packages.
apt-get update

apt-get install -y git subversion build-essential gcc-multilib libncurses5-dev
apt-get install -y zlib1g-dev gawk flex gettext wget unzip python libssl-dev
apt-get install -y openssl cpanminus libnet-ssleay-perl libcrypt-ssleay-perl

apt-get clean


# CPAN packages.
cpanm --skip-satisfied NetAddr::IP::Lite Getopt::Long JSON
cpanm --skip-satisfied LWP::Simple LWP::Protocol::https
