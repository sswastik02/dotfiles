#!/bin/bash

linux=$(uname -a | cut -d ' ' -f3)
hostname=$(hostname)

while true 
do
	d=$(date +'%Y-%m-%d 🗓️ ┆ %X ⌛')
	vol=$(pamixer --get-volume)
	up=$(uptime | cut -d ',' -f1 | cut -d ' ' -f4,5)
	bat=$(cat /sys/class/power_supply/BAT0/capacity)
	bat_status=$(cat /sys/class/power_supply/BAT0/status)
	interface=$(ip route | awk '/default/ {print $5}')
	ip=$(hostname -I | awk '{print $1}')
	cpu_freq=$(grep MHz /proc/cpuinfo | awk '{print $4}' | awk '{temp+=$1;n++} END{printf("%f\n", temp/n);}')

	rx_bytes=$(cat /proc/net/dev | grep $interface | awk '{print $2}')
	tx_bytes=$(cat /proc/net/dev | grep $interface | awk '{print $10}')


	sleep 1

	rx_bytes_new=$(cat /proc/net/dev | grep $interface | awk '{print $2}')
	tx_bytes_new=$(cat /proc/net/dev | grep $interface | awk '{print $10}')

	rx_speed=$(( ($rx_bytes_new - $rx_bytes) / 1024 ))
	tx_speed=$(( ($tx_bytes_new - $tx_bytes) / 1024 ))
	_

	echo "$hostname ($ip) 📡 ┆ $linux 🐧 ┆ $up 🚀 ┆ $rx_speed KB/s ⬇️ $tx_speed KB/s ⬆️ ┆ $vol% 🔊 ┆ $cpu_freq MHz 🔳 ┆ $d  ┆ $bat% 🔋[$bat_status] "  


done
