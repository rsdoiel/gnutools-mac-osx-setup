#!/bin/bash

#
# this is just a reminder of how to install the GNU toolchain
# on my iMac without resorting to Ports or Brew...
#

# Install autoconf 2.69
if [[ ! -d autoconf-2.69 ]]; then
    curl -O -L http://ftpmirror.gnu.org/autoconf/autoconf-2.69.tar.gz
    tar zxvf autoconf-2.69.tar.gz
fi
cd autoconf-2.69
./configure --prefix=$HOME
make
make install
cd ..
echo "Show autoconf version"
autoconf --version

# Install automake 1.15
if [[ ! -d automake-1.15 ]]; then
    curl -O -L http://ftpmirror.gnu.org/automake/automake-1.15.tar.gz
    tar zxvf automake-1.15.tar.gz
fi
cd automake-1.15
./configure --prefix=$HOME
make
make install
cd ..
echo "Show automake version"
automake --version

# Install libtool 2.4.6
if [[ ! -d libtool-2.4.6 ]]; then
    curl -OL http://ftpmirror.gnu.org/libtool/libtool-2.4.6.tar.gz
    tar zxvf libtool-2.4.6.tar.gz
fi
cd libtool-2.4.6
./configure --prefix=$HOME
make
make install
cd ..
#man libtool

# Install pkg-config
if [[ ! -d pkg-config ]]; then
    git clone git://anongit.freedesktop.org/pkg-config
fi
cd pkg-config
./autogen.sh --with-internal-glib
make prefix="$HOME"
make install prefix="$HOME"


