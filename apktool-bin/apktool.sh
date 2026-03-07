#!/bin/sh -e
exec java -Dfile.encoding=utf8 -Xmx512M \
	-jar /opt/apktool/apktool.jar "$@"
