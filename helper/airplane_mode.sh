#!/bin/bash

source "$PWD/../log/log.sh"

#this method is used to enable airplane mode
#on android by using adb API and this method need
#parameter, you can get that parameter by using
#command 'adb devices' on terminal
enable_airplane_mode() {
    adb -s $1 shell cmd connectivity airplane-mode enable
}

#this method is used to disable airplane mode
#on android by using adb API and this method need
#parameter, you can get that parameter by using
#command 'adb devices' on terminal
disable_airplane_mode() {
    adb -s $1 shell cmd connectivity airplane-mode disable
}

#this method is used to enable airplane mode
enable_airplane_mode_on_smartphone() {
    adb shell cmd connectivity airplane-mode enable
}

#this method is used to disable airplane mode
disable_airplane_mode_off_smartphone() {
    adb shell cmd connectivity airplane-mode disable
}

#this method is used to look for an ip that have
#a respone when curl to server by implenting on off
#airplane mode
get_suitable_host_on_smartphone() {
    write_log "airplane mode on"
    enable_airplane_mode_on_smartphone
    sleep 15
    write_log "airplane mode off"
    disable_airplane_mode_off_smartphone
    sleep 10
}
