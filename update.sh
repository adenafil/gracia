#!/bin/bash
cd ..
rm -rf gracia
pkg update -y
pkg upgrade -y
pkg install git
git clone https://github.com/adenafil/gracia.git
cd gracia

