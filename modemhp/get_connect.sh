#!/bin/bash

source "$PWD/../helper/airplane_mode.sh"

while true; do
    # Lakukan Curl ke server dan simpan output ke dalam variabel
    response=$(curl -s -I server.com)

    # Periksa apakah Curl berhasil
    if [[ $response == "" ]]; then
        echo "the server didnt have any response"
        get_suitable_host_on_smartphone
    elif [[ $response == *"HTTP/1.1 200"* ]]; then
        echo "Sukses curl - Status: 200 OK"
    fi

    # Istirahat sebelum melakukan percobaan lagi

    echo "device need taking time to loop again"
    sleep 5
    echo "device need taking time to loop again"
    sleep 8
done
