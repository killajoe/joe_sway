#!/bin/bash
#
# This file can contain commands that will be executed (as root) at the end of
# EndeavourOS install (in online mode only) on the target system.

    local -r username="$1"              # new user you created for the target
    git clone https://github.com/killajoe/joe_sway.git
    cd joe_sway
    cp -a fastfetch i3status mako rofi sway /home/$username/.config/
    chmod -R $username:$username /home/$username/.config
    chmod +x /home/$username/.config/sway/scripts/*
    systemctl enable ly
