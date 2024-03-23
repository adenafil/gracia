#!/bin/bash

enable_airplane_mode() {
    adb -s $1 shell cmd connectivity airplane-mode enable
}

disable_airplane_mode() {
    adb -s $1 shell cmd connectivity airplane-mode disable
}

enable_airplane_mode_on_smartphone() {
    adb shell cmd connectivity airplane-mode enable
}

disable_airplane_mode_on_smartphone() {
    adb shell cmd connectivity airplane-mode disable
}

get_suitable_host_on_smartphone() {
    enable_airplane_mode_on_smartphone
    sleep 30
    disable_airplane_mode_off_smartphone
}
