#!/bin/bash
if [ "${1}" == "pre" ];then
	sh /usr/lib/systemd/system-sleep/killpicom.sh
elif [ "${1}" == "post" ]; then
	# nothing
fi
