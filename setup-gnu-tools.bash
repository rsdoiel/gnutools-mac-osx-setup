#!/bin/bash

#
# this is just a reminder of how to install the GNU toolchain
# on my iMac without resorting to Ports or Brew...
#

# Install autoconf 2.69
curl -O -L http://ftpmirror.gnu.org/autoconf/autoconf-2.69.tar.gz
tar zxvf autoconf-2.69.tar.gz
cd autoconf-2.69
./configure --prefix=$HOME
make
make install
cd ..
echo "Show autoconf version"
autoconf --version

# Install automake 1.15
curl -O -L http://ftpmirror.gnu.org/automake/automake-1.15.tar.gz
tar zxvf automake-1.15.tar.gz
cd automake-1.15
./configure --prefix=$HOME
make
make install
cd ..
echo "Show automake version"
automake --version

# Install libtool 2.4.6
curl -OL http://ftpmirror.gnu.org/libtool/libtool-2.4.6.tar.gz
tar zxvf libtool-2.4.6.tar.gz
cd libtool-2.4.6
./configure --prefix=$HOME
make
make install
cd ..
man libtool


