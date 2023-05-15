#!/bin/sh
. ./Pkgfile
wget -O $name-$version-x86_64.zip \
	https://github.com/owasp-amass/amass/releases/download/v$version/amass_Linux_amd64.zip
