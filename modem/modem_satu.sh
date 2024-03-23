# Menyimpan hasil ping ke dalam variabel
ping_result=$(adb -s fd826600 shell ping -c 1 quiz.vidio.com)

# Menyaring hasil ping untuk mendapatkan nilai rata-rata waktu
average_ping=$(echo "$ping_result" | grep -o 'time=[0-9.]\+' | awk -F'=' '{print $2}')

# Menampilkan hasil ping
echo "Rata-rata waktu ping: $average_ping ms"
