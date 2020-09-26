#!/bin/bash

## 1280x720+1+31
## 1440x810+1+51
## 1280x960+1+46
## 1024x768+3+48
## 800x600+1+26

INDEX=0

for i in *.png
do
	INDEX=$((INDEX+1))
	size=`convert $i -format "%wx%h" info:`
	#echo $size
	
	case $size in
		"1282x772")
			convert -extract 1280x720+1+51 "$i" "$INDEX.png"
			;;
		"802x647")
			convert -extract 800x600+1+46 "$i" "$INDEX.png"
			;;
		"1286x771")
			convert -extract 1280x720+3+48 "$i" "$INDEX.png"
			;;
		"1282x752")
			convert -extract 1280x720+1+31 "$i" "$INDEX.png"
			;;
		"1030x819")
			convert -extract 1024x768+3+48 "$i" "$INDEX.png"
			;;
		"806x651")
			convert -extract 800x600+3+48 "$i" "$INDEX.png"
			;;
		"1282x747")
			convert -extract 1280x720+1+26 "$i" "$INDEX.png"
			;;
		"1026x815")
			convert -extract 1024x768+1+46 "$i" "$INDEX.png"
			;;
		"1741x1010")
			convert -extract 1739x1008+1+31 "$i" "$INDEX.png"
			;;
		"1202x832")
			convert -extract 1200x800+1+31 "$i" "$INDEX.png"
			;;
		"1026x820")
			convert -extract 1024x768+1+51 "$i" "$INDEX.png"
			;;
		"1026x800")
			convert -extract 1024x768+1+31 "$i" "$INDEX.png"
			;;
		"802x627")
			convert -extract 800x600+1+26 "$i" "$INDEX.png"
			;;
		*)
			echo "Uknown format"
			;;
	esac
				
	#convert -extract  800x600+1+26 "$i" "$INDEX.png"
done
