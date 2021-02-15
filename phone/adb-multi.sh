#!/bin/bash
config="$(pwd)/devices"
apk="/home/hardik/Projects/Android-Studio-Projects/BurnerBitsNew/app/build/outputs/apk/debug/BurnerBits-2.0-debug.apk"
connect_all() {
    while IFS= read -r line
    do
        adb connect "$line:5555"
    done < $config
}

install_all() {
    while IFS= read -r line
    do
        adb -s "$line:5555" install $apk
    done < $config
}

connect_all
install_all