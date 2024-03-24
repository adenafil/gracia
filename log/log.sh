#!/bin/bash

write_log() {
    # get tanggal now
    tanggal=$(date +"%Y-%m-%d")
    #make name log based on date
    name_log_file="logfile_$tanggal.log"
    # get time now
    waktu=$(date +"%H:%M:%S")
    # get log message from parameter 1
    pesan=$1
    # write log to file log
    echo "$tanngal $waktu : $pesan" >> "$name_log_file"
}
