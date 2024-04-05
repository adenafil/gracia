#!/bin/bash
source $PWD/log/log.sh

# Fungsi yang akan dieksekusi saat SIGINT diterima
interrupt_handler() {
    write_log "gracia is succesfully stopped"
    echo "$(date) : gracia is succesfully stopped"
    exit 1
}

# Mengatur trap untuk menangkap sinyal SIGINT (Ctrl+C)
trap 'interrupt_handler' SIGINT


source $PWD/helper/airplane_mode.sh
source $PWD/helper/response.sh
source modemhp/connect.sh
connect $1