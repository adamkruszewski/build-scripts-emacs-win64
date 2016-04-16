#/bin/bash
source ./emacs-build-settings.sh

cd ${PREFIX}
cd ../
zip -r $RELEASE_FILE ${PREFIX##*/}
