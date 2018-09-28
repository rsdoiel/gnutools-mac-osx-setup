#!/bin/bash

#
# This script is for getting the source code to tmux,
# compile it and then install it locally in $HOME/bin.
# 

# fetch source code for libevent
if [[ ! -d libevent ]]; then
    git clone git@github.com:libevent/libevent.git
fi
cd libevent
./autogen.sh
./configure --prefix=$HOME
make
make install
cd ..

# fetch source code for ncurses
if [[ ! -d ncurses-6.1 ]]; then
    curl -o ncurses-6.1.tar.gz L https://invisible-island.net/datafiles/release/ncurses.tar.gz
    tar zxvf ncurses-6.1.tar.gz
fi
cd ncurses-6.1
./configure --prefix=$HOME
make
make install
cd ..

# fetch source code for tmxu
if [[ ! -d tmux ]]; then
    git clone git@github.com:tmux/tmux.git
fi
cd tmux
./autogen.sh
./configure --prefix="${HOME}"
make
make install
cd ..
