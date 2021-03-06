#!/bin/bash
set -e
##################################################################################################################

##################################################################################################################


#echo "################################################################"
#echo "gdm"   
#echo "################################################################"


#package="gdm"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
#if pacman -Qi $package &> /dev/null; then

#	echo "################################################################"
#	echo "################## "$package" is already installed"
#	echo "################################################################"

#else

	#checking which helper is installed
#	if pacman -Qi packer &> /dev/null; then

#		echo "Installing with packer"
#		packer -S --noconfirm --noedit  $package

#	elif pacman -Qi yay &> /dev/null; then
		
#		echo "Installing with yay"
#		yay -S --noconfirm   $package
		 	
#	elif pacman -Qi yaourt &> /dev/null; then

#		echo "Installing with yaourt"
#		yaourt -S --noconfirm $package
			  	
#	fi


#fi

echo "################################################################"
echo "lightdm"   
echo "################################################################"


package="lightdm"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm   $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi


fi

echo "################################################################"
echo "lightdm-gtk-greeter"   
echo "################################################################"


package="lightdm-gtk-greeter"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm   $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi


fi
echo "################################################################"
echo "xfce4"   
echo "################################################################"


package="xfce4"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm   $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi


fi




echo "################################################################"
echo "xfce4-goodies"   
echo "################################################################"

package="xfce4-goodies"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm   $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi


fi






echo "Display manager being activated"

#sudo systemctl enable gdm.service
sudo systemctl enable lightdm.service

echo "Reboot and select the proper desktop environment"
echo "with the gauge symbol."

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

echo "Type sudo reboot"

