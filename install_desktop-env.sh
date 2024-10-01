#!/bin/bash

# install script for a somewhat minimal KDE Plasma Desktop Environment and my personal base apps

echo 'Installing custom KDE Standard Package'
sudo nala install akregator ark gwenview kate kcalc kde-plasma-desktop kde-spectacle khelpcenter kwalletmanager muon-meson okular plasma-dataengines-addons plasma-pa plasma-runners-addons plasma-wallpapers-addons plasma-widgets-addons polkit-kde-agent-1 konq-plugins plasma-nm plasma-workspace-wallpapers -y

sudo nala install sddm xorg sddm-theme-debian-breeze sddm-theme-breeze -y

echo 'Installing other base apps'
sudo nala install latte-dock kupfer grub-customizer -y

sudo nala install firefox-esr vlc ffmpeg smb4k libreoffice -y

echo 'Rebooting now...'
sudo reboot now

# mkdir Downloads

# wget -P /home/$USER/Downloads https://linux.dropboxstatic.com/packages/debian/dropbox_2024.04.17_amd64.deb