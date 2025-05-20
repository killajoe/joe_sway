# joe_sway
Nu Sway

![joeswqay_banner](https://raw.githubusercontent.com/killajoe/joe_sway/refs/heads/main/joesway_banner.png)

![screenshot_2025-05-20_04-16-45](https://github.com/user-attachments/assets/715ae71d-f98d-4fe0-b24b-3aefa1908bd4)

Advanced setup for dual display and multiple workspaces with non-dynamic default apps starting in a fixed layout.
* no fancy bars using swaybar and i3-blocks
* Notification = mako
* Ailerons TTF font needed (EndeavourOS Branding Font)
 
# change this:

1. https://github.com/killajoe/joe_sway/blob/main/fastfetch/config.jsonc
```
"format": "\u001b[36m  JӨΣKΛMPЯΛD 🪪 [Der Doktor]"
```
to fit your name. (JӨΣKΛMPЯΛD 🪪 [Der Doktor])

2. https://github.com/killajoe/joe_sway/blob/main/sway/config.d/outputs
Use nwg-displays to create it and copy it from `~/.config/sway` to `~/.config/sway/config.d/`

3. Workspaces: https://github.com/killajoe/joe_sway/blob/main/sway/config.d/workspaces change display names to yours (mine are DP-1 [left] and DP-3 [right])
This is needed also in these configs:
 * https://github.com/killajoe/joe_sway/blob/main/sway/config.d/panels
 * https://github.com/killajoe/joe_sway/blob/main/sway/config.d/wallpaper


