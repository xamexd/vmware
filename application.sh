#!/usr/bin/env bash
if [ "$1" = "start" ]; then
	./application.vi
elif [ "$1" = "status" ]; then
	if ps -p "$2" > /dev/null
	then 
		echo "running"
	else
		echo "not running"
	fi
elif [ "$1" = "stop" ]; then
	kill -9 "$2"
else
	echo "usage: $0 [start, status, or stop], if status then [ppid], if stop[ppid]"
fi
