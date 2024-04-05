#!/bin/bash

# Method untuk melakukan request menggunakan curl
# Mengembalikan respon jika ada dalam waktu 2 detik
get_response() {
    for i in {1..5}; do
        response=$(curl --connect-timeout 2 -s -I "https://$1")
        if [ -n "$response" ]; then
            echo "$response"
            return 0
        fi
    done
    return 1
}