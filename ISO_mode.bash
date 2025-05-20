#!/bin/bash
# use this raw url and add it in welcome plus adding packages.list in use_pkglist.txt in liveuser home path.
# https://raw.githubusercontent.com/killajoe/joe_sway/refs/heads/main/ISO_mode.bash

    local -r username="$1"
    git clone https://github.com/killajoe/joe_sway.git
    cd joe_sway
    cp -a fastfetch i3status mako rofi sway /home/$username/.config/
    chmod -R $username:$username /home/$username/.config
    chmod +x /home/$username/.config/sway/scripts/*
    systemctl enable ly
