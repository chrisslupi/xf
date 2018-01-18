#!/bin/bash
set -e
##################################################################################################################

##################################################################################################################

# Awesome font for icons on i3blocks.conf

#sh install-awesome-font-v1.sh

###############################################################################################


# Neofetch

sh install-neofetch-v1.sh

###############################################################################################

# Openconnect

sh install-openconnect-v1.sh

###############################################################################################

# Spotify

sh install-spotify-v1.sh

###############################################################################################

# RStudio

sh install-rstudio-v1.sh


# Sublime text 3

sh install-sublime-text-v1.sh

###############################################################################################

# zsh

sh install-zsh-v1.sh

###############################################################################################


# hardcodefixer

sh hardcodefixer-v3.sh

###############################################################################################

# vmware
sh install-vmware-v1.sh

###############################################################################################

# nextcloud-client
sh install-nextcloud-client-v1.sh

###############################################################################################

sudo systemctl restart NetworkManager.service

echo "################################################################"
echo "####    all selected extra software  has been installed     ####"
echo "################################################################"
echo
echo
