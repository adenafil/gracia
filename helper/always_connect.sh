#!/bin/bash

source get_devices.sh

connection=("https://quiz.vidio.com" "cvs-deo.shopeemobile.com")

echo "nilai pertama ${connection[0]}"

# Mulai looping

while true; do
    # Wget URL dan simpan responsnya dalam sebuah variabel
    
    response=$(
        adb -s fd826600 shell wget --server-response -0 /dev/null ${connection[0]} 2>&1 | grep "HTTP/" | awk '{print $2}'
    )

    echo $response
    echo "end"
    
    # Periksa respons
    # if [ "$response" == "200" ]; then
    #     echo "Respons OK (HTTP 200). Lanjutkan..."
    # else
    #     echo "Terjadi kesalahan pada respons. Mengaktifkan mode pesawat..."
    #     enable_airplane_mode
    #     sleep 10 # Tunda selama 10 detik sebelum menonaktifkan mode pesawat kembali
    #     echo "Menonaktifkan mode pesawat kembali..."
    #     disable_airplane_mode
    # fi
    
    # Tunda eksekusi selama 30 detik sebelum memeriksa kembali
    sleep 30
done
