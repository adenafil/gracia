#!/bin/bash

enable_airplane_mode() {
    adb -s $device shell cmd connectivity airplane-mode enable
}

enable_airplane_mode() {
    adb -s $device shell cmd connectivity airplane-mode disable
}

