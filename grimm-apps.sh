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

sudo pacman -Syu

echo
tput setaf 2
echo "################################################################"
echo "################### Core software"
echo "################################################################"
tput sgr0
echo

# sudo pacman -S --noconfirm --needed - < apps.txt

sudo pacman -S --noconfirm --needed curl

sudo pacman -S --noconfirm --needed wget

sudo pacman -S --noconfirm --needed gnome-keyring libsecret libgnome-keyring

sudo pacman -S --noconfirm --needed mariadb mariadb-clients python-mysqlclient

sudo pacman -S --noconfirm --needed arc-gtk-theme
sudo pacman -S --noconfirm --needed aircrack-ng
sudo pacman -S --noconfirm --needed ansible
sudo pacman -S --noconfirm --needed awesome-terminal-fonts
sudo pacman -S --noconfirm --needed aws-cli-v2
sudo pacman -S --noconfirm --needed catfish
sudo pacman -S --noconfirm --needed dropbear
sudo pacman -S --noconfirm --needed elisa
sudo pacman -S --noconfirm --needed github-cli
sudo pacman -S --noconfirm --needed glances
sudo pacman -S --noconfirm --needed gnucash
sudo pacman -S --noconfirm --needed intellij-idea-community-edition
sudo pacman -S --noconfirm --needed kotlin
sudo pacman -S --noconfirm --needed nginx
sudo pacman -S --noconfirm --needed okular
sudo pacman -S --noconfirm --needed postgresql
sudo pacman -S --noconfirm --needed prometheus
sudo pacman -S --noconfirm --needed pycharm-community-edition
sudo pacman -S --noconfirm --needed python-aws-xray-sdk
sudo pacman -S --noconfirm --needed python-dropbox
sudo pacman -S --noconfirm --needed python-flask-marshmallow
sudo pacman -S --noconfirm --needed python-kubernetes
sudo pacman -S --noconfirm --needed python-pipenv
sudo pacman -S --noconfirm --needed python-redis
sudo pacman -S --noconfirm --needed rebuild-detector
sudo pacman -S --noconfirm --needed redis
sudo pacman -S --noconfirm --needed remmina
sudo pacman -S --noconfirm --needed sqlitebrowser
sudo pacman -S --noconfirm --needed terraform
sudo pacman -S --noconfirm --needed transmission-gtk
sudo pacman -S --noconfirm --needed ttf-cascadia-code
sudo pacman -S --noconfirm --needed ttf-fira-code
sudo pacman -S --noconfirm --needed ttf-opensans
sudo pacman -S --noconfirm --needed docker
sudo pacman -S --noconfirm --needed docker-compose
sudo pacman -S --noconfirm --needed gitea
sudo pacman -S --noconfirm --needed gnome-boxes
sudo pacman -S --noconfirm --needed jupyterlab
sudo pacman -S --noconfirm --needed traefik
sudo pacman -S --noconfirm --needed wakatime
sudo pacman -S --noconfirm --needed sheldon
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed python-pywal
sudo pacman -S --noconfirm --needed pv
sudo pacman -S --noconfirm --needed ttf-roboto-mono
sudo pacman -S --noconfirm --needed libreoffice-fresh
sudo pacman -S --noconfirm --needed terminator
sudo pacman -S --noconfirm --needed screen
sudo pacman -S --noconfirm --needed opencv
sudo pacman -S --noconfirm --needed tesseract
sudo pacman -S --noconfirm --needed python-pytesseract
sudo pacman -S --noconfirm --needed tesseract-data-eng
sudo pacman -S --noconfirm --needed tesseract-data-swa

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
yay -S --noconfirm --needed google-cloud-cli
yay -S --noconfirm --needed gitkraken
yay -S --noconfirm --needed slack-desktop
yay -S --noconfirm --needed python-poetry
yay -S --noconfirm --needed python-cookiecutter
yay -S --noconfirm --needed spyder

yay -S --noconfirm --needed terragrunt
yay -S --noconfirm --needed atlantis
yay -S --noconfirm --needed terraformer
yay -S --noconfirm --needed tflint
yay -S --noconfirm --needed sidekick-browser-stable-bin

echo
tput setaf 3
echo "################################################################"
echo "################### Git Store Command"
echo "################################################################"
tput sgr0
echo

git config --global credential.helper store
git config --global credential.helper

git config --global user.name "DuncanIreri"
git config --global user.email "duncanireri@gmail.com"
sudo git config --system core.editor nano

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
yay -S --noconfirm --needed ttf-monoid
yay -S --noconfirm --needed ttf-monoid-nerd

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

# if [ -f /usr/share/xsessions/xfce.desktop ]; then
#
#   echo
#   tput setaf 2
#   echo "################################################################"
#   echo "################### Installing software for Xfce"
#   echo "################################################################"
#   tput sgr0
#   echo
#
#   sudo pacman -S --noconfirm --needed menulibre
#   sudo pacman -S --noconfirm --needed mugshot
#   sudo pacman -S --noconfirm --needed prot16-xfce4-terminal
#   sudo pacman -S --noconfirm --needed tempus-themes-xfce4-terminal-git
#   sudo pacman -S --noconfirm --needed xfce4-terminal-base16-colors-git
#
# fi

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
tput setaf 2
echo "################################################################"
echo "################### Setting Up Zsh"
echo "################################################################"
tput sgr0
echo

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
