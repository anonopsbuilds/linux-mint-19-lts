#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Written to be used on 64 bit computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
@@ -36,7 +36,7 @@ echo "Install git for an easy installation"

# if there is already a folder in tmp, delete or else do nothing
[ -d /tmp/mint-y-theme ] && rm -rf "/tmp/mint-y-theme" || echo ""
# download the github in folder /tmp/mint-y-theme
# download the github repository into folder /tmp/mint-y-theme


git clone https://github.com/linuxmint/mint-y-theme.git /tmp/mint-y-theme
@@ -49,6 +49,18 @@ cd /tmp/mint-y-theme/src
sudo cp -r /tmp/mint-y-theme/usr/share/themes/* /usr/share/themes/
rm -rf /tmp/mint-y-theme

# Ask if the installed package ruby-sass should be uninstalled
echo "################################################################"
echo "The package ruby-sass was installed temporarily to build the themes."

while true; do
    read -p "Do you want to remove the package ruby-sass from your system? [Y/n] " yn
    case $yn in
        [Yy]* ) sudo apt-get remove ruby-sass; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "################################################################"
echo "###################    T H E   E N D      ######################"
