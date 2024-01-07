#!/bin/sh -e
#
# /etc/rc.d/adb: start/stop adb daemon
#

case $1 in
start)
	/opt/android-sdk/platform-tools/adb start-server
	;;
stop)
	/opt/android-sdk/platform-tools/adb kill-server
	;;
restart)
	$0 stop
	sleep 2
	$0 start
	;;
status)
	echo "status unavailable"
	;;
*)
	echo "usage: $0 [start|stop|restart|status]"
	;;
esac

# End of file.
