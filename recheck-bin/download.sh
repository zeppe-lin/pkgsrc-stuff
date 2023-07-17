#!/bin/sh

. $PWD/Pkgfile

URL=https://github.com/makenowjust-labs/recheck

wget -O $name-$version-amd64.bin \
  ${URL}/releases/download/v$version/recheck-linux-x64

xz -e --threads=$(nproc) $name-$version-amd64.bin

# End of file.
