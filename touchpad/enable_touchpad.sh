#!/bin/bash
xinput set-prop $(xinput list | grep "Touchpad" | cut -d'=' -f 2 | cut -d'[' -f 1) $(xinput list-props $(xinput list | grep "Touchpad" | cut -d'=' -f 2 | cut -d'[' -f 1) | grep "Tapping Enabled (" | cut -d'(' -f 2 | cut -d')' -f 1) 1
