#!/bin/bash

source get_devices.sh

# Menampilkan isi dari array
echo "Daftar perangkat:"
for device in "${device_array[@]}"; do
    echo "$device"
done
