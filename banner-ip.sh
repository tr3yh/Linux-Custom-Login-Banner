#!/bin/bash

#This line is simply my troubleshooting...
export DISPLAY=:0
#Debian-gdm for kali
xhost +SI:localuser:gdm
#Change gdm to Debian-gdm for kali
sudo -H -u gdm bash -c 'dbus-launch gsettings set org.gnome.login-screen banner-message-enable true'
#Change gdm to Debian-gdm for kali
sudo -H -u gdm bash -c 'dbus-launch gsettings set org.gnome.login-screen banner-message-text "$(hostname -I)"'