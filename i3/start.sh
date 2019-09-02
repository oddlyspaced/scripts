#!/bin/bash
# Script to run commands on i3 start
nitrogen --restore
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
sleep 1 &
 compton -b &
~/.scripts/i3/refesh.sh &
exit 0
