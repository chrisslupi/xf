#!/bin/bash
#
##################################################################################################################

##################################################################################################################


program="paper-icon-theme-git"
command="paper-icon-theme-git"

if which yay > /dev/null; then

	echo "Installing with yay"
	yay -S --noconfirm   $program

elif which packer > /dev/null; then

	echo "Installing with packer"
	packer -S --noconfirm --noedit  $program 	

elif which yaourt > /dev/null; then

	echo "Installing with yaourt"
	yaourt -S --noconfirm $program
		  	
fi


if which $command > /dev/null; then
	
	echo "################################################################"
	echo "################################## "$command" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! "$command" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

fi
