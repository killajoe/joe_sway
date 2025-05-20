#!/bin/bash
# use this raw url and add it in welcome plus adding packages.list in use_pkglist.txt in liveuser home path.
# https://raw.githubusercontent.com/killajoe/joe_sway/refs/heads/main/ISO_mode.bash

    local -r username="$1"
    git clone https://github.com/killajoe/joe_sway.git
    cd joe_sway
    mkdir /home/$username/.config
    cp -a fastfetch  /home/$username/.config/
    cp -a i3status  /home/$username/.config/
    cp -a mako /home/$username/.config/
    cp -a rofi /home/$username/.config/
    cp -a sway /home/$username/.config/
    chown -R $username:$username /home/$username/.config
    chmod +x /home/$username/.config/sway/scripts/*
    systemctl enable ly
