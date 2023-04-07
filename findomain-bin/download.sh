#!/bin/sh
. ./Pkgfile
wget -c -O $name-$version-x86_64.zip \
https://github.com/Findomain/Findomain/releases/download/$version/findomain-linux.zip
