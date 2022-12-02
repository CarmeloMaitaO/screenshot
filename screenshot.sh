#!/bin/sh

optstring="sw"
while getopts ${optstring} arg; do
	case ${arg} in
		s)
			arguments=""
			;;
		w)
			arguments="-window root"
			;;
		"?")
			echo "Invalid option: -${OPTARG}."
			exit 2
			;;
		*)
			echo "Invalid usage"
			exit 2
			;;
	esac
done

name="screenshot-$(date +%s).png";
file="/home/chiguire/Pictures/screenshots/$name";
import ${arguments} "$file";
xclip -selection clipboard -t image/png; < $file;
notify-send "Screenshot Taken" "Screenshot $name saved to clipboard";
