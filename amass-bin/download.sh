#!/bin/sh
. ./Pkgfile
wget -O $name-$version-x86_64.zip \
https://github.com/OWASP/Amass/releases/download/v$version/amass_linux_amd64.zip
