#!/bin/bash

linux=$(uname -a | cut -d ' ' -f3)
hostname=$(hostname)

while true 
do
	
	d=$(date +'%Y-%m-%d 🗓️ │ %H:%M 🕒')
	vol=$(pamixer --get-volume-human)
	up=$(uptime | cut -d ',' -f1 | cut -d ' ' -f4,5)
	bat=$(cat /sys/class/power_supply/BAT0/capacity)
	bat_status=$(cat /sys/class/power_supply/BAT0/status)
	interface=$(ip route | awk '/default/ {print $5}')
	ip=$(hostname -I | awk '{print $1}')
	cpu_freq=$(grep MHz /proc/cpuinfo | awk '{print $4}' | awk '{temp+=$1;n++} END{printf("%f\n", temp/n);}')
	if [ -z "$interface" ]; then
		rx_bytes=0
		tx_bytes=0
	else
		rx_bytes=$(cat /proc/net/dev | grep $interface | awk '{print $2}')
		tx_bytes=$(cat /proc/net/dev | grep $interface | awk '{print $10}')
	fi

	sleep 1 

	if [ -z "$interface" ]; then
		rx_bytes_new=0
		tx_bytes_new=0
	else
		rx_bytes_new=$(cat /proc/net/dev | grep $interface | awk '{print $2}')
		tx_bytes_new=$(cat /proc/net/dev | grep $interface | awk '{print $10}')
	fi
	
	rx_speed=$(( ($rx_bytes_new - $rx_bytes) / 1024 ))
	tx_speed=$(( ($tx_bytes_new - $tx_bytes) / 1024 ))
	cpu_freq_GHz=$(echo "scale=2; $cpu_freq / 1000" | bc)

	echo -e "$hostname ($ip) 📡 │ $linux 🐧 │ $up 🚀 │ $rx_speed KB/s ⬇️ $tx_speed KB/s ⬆️ │ $vol 🔊 │ $cpu_freq_GHz GHz 🔳 │ $d  │ $bat% 🔋[$bat_status] "  

done
