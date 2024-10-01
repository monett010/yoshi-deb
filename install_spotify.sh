#!/bin/bash

# install script for installing my other apps

echo 'Installing Dropbox...'
wget -P /home/$USER/Downloads https://linux.dropboxstatic.com/packages/debian/dropbox_2024.04.17_amd64.deb

sudo nala install /home/$USER/Downloads/dropbox_2024.04.17_amd64.deb -y

echo 'Installing Discord...'
mkdir /home/$USER/Downloads/discord

wget -P /home/$USER/Downloads/discord/ 'https://discord.com/api/download/stable?platform=linux&format=deb' --content-disposition=on

sudo nala install /home/$USER/Downloads/discord/* -y

echo 'Installing Spotify...'

curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg

echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo nala update && sudo nala install spotify-client -y

echo 'Installing Obsidian...'
wget -P /home/$USER/Downloads https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.7/obsidian_1.6.7_amd64.deb

sudo nala install /home/$USER/Downloads/obsidian_1.6.7_amd64.deb -y

echo 'Installing WonderPen...'
wget -P /home/$USER/Downloads https://file.tominlab.com/WonderPen/2.5/WonderPen_linux_amd64_2.5.6(7500).deb

sudo nala install /home/$USER/Downloads/WonderPen_linux_amd64_2.5.6(7500).deb -y

echo 'Installing VS Code...'
wget -P /home/$USER/Downloads/ https://vscode.download.prss.microsoft.com/dbazure/download/stable/38c31bc77e0dd6ae88a4e9cc93428cc27a56ba40/code_1.93.1-1726079302_amd64.deb

sudo nala install /home/$USER/Downloads/code_1.93.1-1726079302_amd64.deb -y

echo 'Installing Tela Icons...'
git clone https://github.com/vinceliuice/Tela-icon-theme.git /home/$USER/Downloads/Tela-icon-theme --depth=1

cd /home/$USER/Downloads/Tela-icon-theme

./install.sh -c yellow