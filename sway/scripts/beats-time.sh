#!/bin/bash

# beats - swatch time 
# http://www.timeanddate.com/time/internettime.html
# https://www.swatch.com/en/internettime/
# 
#https://en.wikipedia.org/wiki/Swatch_Internet_Time#Calculation_from_UTC.2B1

# required
command -v bc >/dev/null 2>&1 || { echo "I need bc" ; exit 1; }

# UTC to variables
export TZ=GMT-1 # Not sure why is this minus and not plus
read h m s <<<$(date "+%H %M %S")

#echo $h $m $s

# (UTC+1seconds + (UTC+1minutes * 60) + (UTC+1hours * 3600)) / 86.4 
# btw: beats smaller than one are not in the standard
# bc is "rounding down", which seems to be the correct way in this case

# h=23
# m=59
# s=59

beats=$(bc <<< "scale=0; ($s + ($m * 60) + (($h) * 3600)) / 86.4")
echo "$beats.beats"
