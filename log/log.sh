#!/bin/bash

directory=$(basename "$(pwd)")


write_log() {

    if [ "$directory" == "gracia" ]; then
    echo $PWD/log
    cd $PWD/log
    fi

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
    
    cd $PWD/..
    echo "im in $PWD"
}
