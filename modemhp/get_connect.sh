#!/bin/bash

source "$PWD/../helper/airplane_mode.sh"

while true; do
    # Lakukan Curl ke server dan simpan output ke dalam variabel
    response=$(curl -s -I server.com)

    # Periksa apakah Curl berhasil
    if [[ $response == *"Could not resolve host"* ]]; then
        echo "Gagal menge-resolve domain"
    elif [[ $response == *"HTTP/1.1 200"* ]]; then
        echo "Sukses curl - Status: 200 OK"
    else
        echo "Gagal curl - Status: $response"
    fi

    # Istirahat sebelum melakukan percobaan lagi
    sleep 5
done

