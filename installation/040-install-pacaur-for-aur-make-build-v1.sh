#!/bin/bash
set -e
#======================================================================================

#======================================================================================

echo "################################################################"
echo "####           checking if dependencies are installed                ####"
echo "################################################################"



sudo pacman -S expac yajl --needed --noconfirm

echo "################################################################"
echo "####                   yay installation                  ####"
echo "################################################################"


# source : https://www.ostechnix.com/install-yay-arch-linux/




package="yay"
command="yay"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	# Create a tmp-working-dir and navigate into it
	mkdir ~/tmp

	cd ~/tmp/

	gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53

	curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower

	makepkg -i PKGBUILD --noconfirm

	curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay

	makepkg -i PKGBUILD --noconfirm

	cd

	rm -r ~/tmp

	
	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi
