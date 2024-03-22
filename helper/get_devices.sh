#!/bin/bash

# Menjalankan adb devices dan menyimpan outputnya ke dalam sebuah variabel
device_list=$(adb devices | grep -v "List of devices attached" | awk '{print $1}')

# Menginisialisasi array kosong
device_array=()

# Memasukkan setiap perangkat ke dalam array
while IFS= read -r device; do
    device_array+=("$device")
done <<< "$device_list"

# Menampilkan isi dari array
#echo "Daftar perangkat:"
#for device in "${device_array[@]}"; do
#    echo "$device"
#done


