#/bin/bash

# Based on instructions from
# https://emacs.stackexchange.com/questions/16971/how-to-build-emacs-master-branch-aka-trunk-on-ms-windows

pacman -S base-devel \
       mingw-w64-x86_64-toolchain \
       mingw-w64-x86_64-xpm-nox \
       mingw-w64-x86_64-libtiff \
       mingw-w64-x86_64-giflib \
       mingw-w64-x86_64-libpng \
       mingw-w64-x86_64-libjpeg-turbo \
       mingw-w64-x86_64-librsvg \
       mingw-w64-x86_64-libxml2 \
       mingw-w64-x86_64-gnutls \
       mingw-w64-x86_64-jbigkit \
       mingw-w64-x86_64-freetype \
       mingw-w64-x86_64-cairo \
       mingw-w64-x86_64-pango \
       git \
       zip

