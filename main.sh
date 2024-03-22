#!/bin/bash

source "$PWD/helper/airplane_mode.sh"

enable_airplane_mode "1d5d6a027d24"
sleep 5
disable_airplane_mode "1d5d6a027d24"

