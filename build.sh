#!/bin/sh
# grub-pc-bin, xorriso, libc6-dev-i386 as a dependency
set -e
. ./headers.sh
PATH=/home/chris/build-i686-elf/linux/output/bin/:$PATH

for PROJECT in $PROJECTS; do
  (cd $PROJECT && DESTDIR="$SYSROOT" $MAKE install)
done
