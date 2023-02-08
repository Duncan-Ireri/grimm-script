#!/bin/bash
#set -e
##################################################################################################################
#
#   GRIMM SETUP SCRIPT
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

echo
tput setaf 3
echo "################################################################"
echo "################### Removing Some Software"
echo "################################################################"
tput sgr0
echo


echo
tput setaf 3
echo "################################################################"
echo "################### Create Folders"
echo "################################################################"
tput sgr0
echo

mkdir ~/Devwork
mkdir ~/Devwork/python_dir
mkdir ~/Devwork/infraops_dir
mkdir ~/Devwork/python_dir/micro
mkdir ~/Devwork/python_dir/sandbox


echo
tput setaf 3
echo "################################################################"
echo "################### Start current choices"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed archlinux-keyring

sudo pacman -Sy

sh grimm-apps*
sh grimm-eos*

tput setaf 2
echo "################################################################"
echo "End current choices"
echo "################################################################"
tput sgr0