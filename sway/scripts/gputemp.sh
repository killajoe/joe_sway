#!/bin/bash
#echo "$(nvidia-smi --format=csv,noheader --query-gpu=temperature.gpu) °C"
#echo "$(nvidia-settings -q gpucoretemp -t) °C"
#gputemp="sensors | grep -o -E "[\+\-]?[0-9]*.[0-9]*°C" | sed -n '1p' | tr -d '+°C"
#gputemp="sh ~/.config/i3/scripts/nouveau-tmp.sh"
#echo "$(sh ~/.config/i3/scripts/nouveau-tmp.sh)°C"
sensors 2>/dev/null | awk '/i915-pci-0600/{flag=1} flag && /temp1/ {gsub("\\+", "", $2); print $2, $3; exit}'



