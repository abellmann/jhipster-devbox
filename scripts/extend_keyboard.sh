#!/bin/bash
HomeDir="/home/vagrant"
git clone https://github.com/DreymaR/BigBagKbdTrix_XKB.git $HomeDir/BigBagKbdTrix_XKB
sudo bash $HomeDir/BigBagKbdTrix_XKB/install-dreymar-xmod.sh -o
sudo cp /etc/default/keyboard /etc/default/keyboard.backup.$(date +"%Y%m%d%H%M")
read -d '' DefaultKeyboard <<EOF
# KEYBOARD CONFIGURATION FILE
# this uses the extend keyboard navigation from https://github.com/DreymaR/BigBagKbdTrix_XKB
# with the normal uk english keyboard

XKBMODEL="pc105"
XKBMODEL="gb"
XKBVARIANT=""
XKBOPTIONS="lv5:caps_switch_lock,misc:extend,compose:menu,grp:shifts_toggle"

BACKSPACE="guess"
EOF

sudo bash -c "echo '$DefaultKeyboard' > /etc/default/keyboard"

read -d '' XkbCommand <<EOF

# Dreymars extended keyboard navigation from https://github.com/DreymaR/BigBagKbdTrix_XKB
setxkbmap -model 'pc105' -layout 'gb' -option \'misc:extend,lv5:caps_switch_lock,grp:shifts_toggle,compose:menu'
EOF

bash -c "echo \"$XkbCommand\" >> $HomeDir/.bashrc"
bash -c "echo \"$XkbCommand\" >> $HomeDir/.zshrc"
