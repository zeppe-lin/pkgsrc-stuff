#!/bin/sh
exec /usr/bin/perl -I /usr/share/nikto /usr/share/nikto/replay.pl "$@"
