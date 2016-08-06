#/bin/bash
source ./emacs-build-settings.sh
LIBROOT=/mingw64/bin/
LIBS="
libXpm-noX4.dll
libdbus-1-3.dll
libffi-6.dll
libgmp-10.dll
libgnutls-30.dll
libhogweed-4-2.dll
libiconv-2.dll
libidn-11.dll
libintl-8.dll
libnettle-6-2.dll
libp11-kit-0.dll
libpng16-16.dll
libtasn1-6.dll
libwinpthread-1.dll
zlib1.dll"

cd emacs-25
[ -d ${PREFIX} ] && rm -fr ${PREFIX}
mkdir -p ${PREFIX##*/}
make install
for LIB in $LIBS; do
           cp ${LIBROOT}/${LIB} ${PREFIX}/bin/;
done
