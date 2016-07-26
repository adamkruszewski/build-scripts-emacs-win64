#/bin/bash

# Based on instructions from
# https://emacs.stackexchange.com/questions/16971/how-to-build-emacs-master-branch-aka-trunk-on-ms-windows

PREFIX=/c/emacs/emacs-25

[ -d emacs-25 ] || git clone git://git.sv.gnu.org/emacs.git emacs-25
cd emacs-25
git config core.autocrlf false
git reset --hard && git clean -dfx
git pull
./autogen.sh
CFLAGS=-O2 PKG_CONFIG_PATH=/mingw64/lib/pkgconfig \
               ./configure --prefix=$PREFIX --without-imagemagick
make -j4
