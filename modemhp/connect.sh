#!/bin/bash

# source "$PWD/../helper/airplane_mode.sh"
# source "$PWD/../log/log.sh"

connect() {
    write_log "============================================="
    write_log "$(date)"
    echo "============================================="
    write_log "gracia is succesfully started"
    echo "$(date) : gracia is succesfully started"
    while true; do
    # Lakukan Curl ke server dan simpan output ke dalam variabel
    response=$(get_response $1) 

    #echo "result of response : "
    #echo -e "$response";

    # Periksa apakah Curl berhasil
    if [[ $response == "" ]]; then
        echo "$(date) : offline"
        write_log "offline (no response)"
        get_suitable_host_on_smartphone
    elif [[ $response == *"HTTP/2 302"* ]]; then
        echo "$(date) : offline (302)"
        write_log "offline (302)"
        get_suitable_host_on_smartphone
    elif [[ $response == *"HTTP/2 404"* || $response == *"HTTP/2 301"* || $response == *"HTTP/2 404"* ]]; then
        echo "$(date) : online"
    fi

    # Istirahat sebelum melakukan percobaan lagi
    sleep 5
    echo "$(date) : wait for looping"
    sleep 8
done

}
