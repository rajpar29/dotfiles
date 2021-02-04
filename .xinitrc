#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

# SWAP esc caps
setxkbmap -option "caps:swapescape"

# Import DISPLAY variable 
#systemctl --user import-environment DISPLAY

#sh /home/cipher/scripts/layout_arandr &

#export XDG_SESSION_TYPE=x11
#exec startxfce4
#exec i3
exec awesome
#exec dwm


#export DESKTOP_SESSION=plasma
#exec startplasma-x11
