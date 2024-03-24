#!/bin/bash

source "$PWD/../helper/airplane_mode.sh"
source "$PWD/../log/log.sh"

while true; do
    # Lakukan Curl ke server dan simpan output ke dalam variabel
    response=$(curl --connect-timeout 2 -s -I https://server.com)

    # Periksa apakah Curl berhasil
    if [[ $response == "" ]]; then
        echo "$(date) : offline"
        write_log "offline (no response)"
        get_suitable_host_on_smartphone
    elif [[ $response == *"HTTP/1.1 302"* ]]; then
        echo "$(date) : offline (302)"
        write_log "offline (302)"
        get_suitable_host_on_smartphone
    elif [[ $response == *"HTTP/2 301"* ]]; then
        echo "$(date) : online(301)"
    elif [[ $response == *"HTTP/2 404"* ]]; then
        echo "$(date) : online(404)"
    fi

    # Istirahat sebelum melakukan percobaan lagi
    sleep 5
    echo "$(date) : wait for looping"
    sleep 8
done
