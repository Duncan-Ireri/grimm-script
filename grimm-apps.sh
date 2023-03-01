#!/bin/bash
#set -e
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

echo
tput setaf 2
echo "########################################################################"
echo "Arch Linux Servers have been written to /etc/pacman.d/mirrorlist"
echo "Use nmirrorlist to inspect"
echo "########################################################################"
tput sgr0
echo

sudo pacman -S reflector
sudo pacman-mirrors --fasttrack 5

sudo reflector --age 6 --latest 20 --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist
sudo pacman -Syu

echo
tput setaf 2
echo "################################################################"
echo "################### Core software"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed curl

sudo pacman -S --noconfirm --needed wget

# wget bit.ly/get-arcolinux-keys && chmod +x ./get-arcolinux-keys  && sudo ./get-arcolinux-keys && sudo pacman -Syu archlinux-tweak-tool-git

sudo pacman -S --noconfirm --needed - < apps.txt

sudo pacman -S --noconfirm --needed gnome-keyring libsecret libgnome-keyring

sudo pacman -S --noconfirm --needed mariadb mariadb-clients python-mysqlclient

echo
tput setaf 2
echo "################################################################"
echo "################### Developer Central"
echo "################################################################"
tput sgr0
echo

yay -S --noconfirm --needed python39
yay -S --noconfirm --needed python38
yay -S --noconfirm --needed python37
yay -S --noconfirm --needed gradle
yay -S --noconfirm --needed maven
yay -S --noconfirm --needed spring-boot-cli
yay -S --noconfirm --needed kafka

yay -S --noconfirm --needed visual-studio-code-bin
yay -S --noconfirm --needed sublime-text-4
yay -S --noconfirm --needed sublime-merge
yay -S --noconfirm --needed google-cloud-sdk
yay -S --noconfirm --needed gitkraken
yay -S --noconfirm --needed slack-desktop
yay -S --noconfirm --needed python-poetry
yay -S --noconfirm --needed python-cookiecutter
yay -S --noconfirm --needed spyder

echo
tput setaf 3
echo "################################################################"
echo "################### Git Store Command"
echo "################################################################"
tput sgr0
echo

git config --global credential.helper store
git config --global credential.helper

echo
tput setaf 2
echo "################################################################"
echo "################### Fonts"
echo "################################################################"
tput sgr0
echo

yay -S --noconfirm --needed noto-fonts-emoji
yay -S --noconfirm --needed noto-color-emoji-fontconfig
yay -S --noconfirm --needed ttf-jetbrains-mono

sudo pacman -S --noconfirm --needed ttf-bitstream-vera
sudo pacman -S --noconfirm --needed ttf-dejavu
sudo pacman -S --noconfirm --needed ttf-droid
sudo pacman -S --noconfirm --needed ttf-hack
sudo pacman -S --noconfirm --needed ttf-inconsolata
sudo pacman -S --noconfirm --needed ttf-liberation
sudo pacman -S --noconfirm --needed ttf-roboto
sudo pacman -S --noconfirm --needed ttf-roboto-mono
sudo pacman -S --noconfirm --needed ttf-ubuntu-font-family


echo
tput setaf 2
echo "################################################################"
echo "################### Elasticsearch"
echo "################################################################"
tput sgr0
echo

yay -S --noconfirm --needed elasticsearch
yay -S --noconfirm --needed kibana

echo
tput setaf 2
echo "################################################################"
echo "################### Other"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed simplescreenrecorder
sudo pacman -S --noconfirm --needed zsh
sudo pacman -S --noconfirm --needed zsh-completions
sudo pacman -S --noconfirm --needed zsh-syntax-highlighting

sudo pacman -S --noconfirm --needed avahi
sudo pacman -S --noconfirm --needed ntp

sudo pacman -S --noconfirm --needed gzip
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed unace
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed unzip

sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gparted

sudo pacman -S --noconfirm --needed logrotate
sudo pacman -S --noconfirm --needed lolcat
sudo pacman -S --noconfirm --needed lshw

sudo pacman -S --noconfirm --needed dbeaver

sudo systemctl enable avahi-daemon.service
sudo systemctl enable ntpd.service

sudo pacman -S --noconfirm --needed base-devel

echo
tput setaf 2
echo "################################################################"
echo "################### Setting Up Docker"
echo "################################################################"
tput sgr0
echo
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

# when on xfce

if [ -f /usr/share/xsessions/xfce.desktop ]; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Installing software for Xfce"
  echo "################################################################"
  tput sgr0
  echo

  sudo pacman -S --noconfirm --needed menulibre
  sudo pacman -S --noconfirm --needed mugshot
  sudo pacman -S --noconfirm --needed prot16-xfce4-terminal
  sudo pacman -S --noconfirm --needed tempus-themes-xfce4-terminal-git
  sudo pacman -S --noconfirm --needed xfce4-terminal-base16-colors-git

fi

echo
tput setaf 2
echo "################################################################"
echo "################### Setting Up cloud-sql-proxy"
echo "################################################################"
tput sgr0
echo

wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
chmod +x cloud_sql_proxy
echo $PATH
sudo mv cloud_sql_proxy /usr/local/bin/cloud_sql_proxy 


echo
tput setaf 2
echo "################################################################"
echo "################### Setting Up clamav"
echo "################################################################"
tput sgr0
echo

yay -S --noconfirm --needed clamav
systemctl stop clamav-freshclam
sudo freshclam
systemctl start clamav-freshclam

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo