#/bin/bash
source ./emacs-build-settings.sh
LIBROOT=/mingw64/bin/
LIBS="libXpm-noX4.dll
libbz2-1.dll
libcairo-2.dll
libcairo-gobject-2.dll
libcairo-script-interpreter-2.dll
libcroco-0.6-3.dll
libdbus-1-3.dll
libexpat-1.dll
libffi-6.dll
libfontconfig-1.dll
libfreetype-6.dll
libgcc_s_seh-1.dll
libgdk_pixbuf-2.0-0.dll
libgif-7.dll
libgio-2.0-0.dll
libglib-2.0-0.dll
libgmodule-2.0-0.dll
libgmp-10.dll
libgnutls-30.dll
libgnutlsxx-28.dll
libgobject-2.0-0.dll
libgomp-1.dll
libgomp-plugin-host_nonshm-1.dll
libharfbuzz-0.dll
libharfbuzz-gobject-0.dll
libharfbuzz-icu-0.dll
libhogweed-4-1.dll
libiconv-2.dll
libidn-11.dll
libintl-8.dll
libjbig-0.dll
libjpeg-8.dll
liblzma-5.dll
libnettle-6-1.dll
libp11-kit-0.dll
libpango-1.0-0.dll
libpangocairo-1.0-0.dll
libpangoft2-1.0-0.dll
libpangowin32-1.0-0.dll
libpixman-1-0.dll
libpng16-16.dll
librsvg-2-2.dll
libtasn1-6.dll
libtiff-5.dll
libtiffxx-5.dll
libwinpthread-1.dll
libxml2-2.dll
zlib1.dll"

cd emacs-25
[ -d ${PREFIX} ] && rm -fr ${PREFIX}
mkdir -p ${PREFIX##*/}
make install
for LIB in $LIBS; do
           cp ${LIBROOT}/${LIB} ${PREFIX}/bin/;
done
