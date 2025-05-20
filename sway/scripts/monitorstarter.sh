#!/bin/bash
# this is a layout saver for specific workspace to start apps in the same layout on login 

WS=" "

# Start Kitty Terminal
swaymsg "workspace $WS; exec kitty --title Glances -e glances"
swaymsg "workspace $WS; exec kitty --title Journal -e journalctl -f"

# Start Telegram (if needed)
swaymsg "exec telegram-desktop"

# waiting for journal window, and move it up
for i in {1..10}; do
  if swaymsg -t get_tree | grep -q '"name": "Journal"'; then
    swaymsg '[title="Journal"] move up'
    break
  fi
  sleep 0.5
done

# waiting for telegram and move it to the right side
for i in {1..10}; do
  if swaymsg -t get_tree | grep -q '"app_id": "org.telegram.desktop"'; then
    swaymsg '[app_id="org.telegram.desktop"] move right'
    break
  fi
  sleep 0.5
done
