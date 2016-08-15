#!/bin/bash
#ubuntuReady

#ADD ALL REPOSITORIES WE NEED
	
	##BASIC REPOSITORIES

	##GIMP
	sudo apt-add-repository ppa:otto-kesselgulasch/gimp -y 
	
	##Nvidia Graphics Driver
	sudo add-apt-repository ppa:graphics-drivers/ppa -y 
	
	##Google Chrome
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
	
	##Ubuntu Restricted Extras
	sudo apt-add-repository ppa:mc3man/trusty-media -y 
	sudo apt-add-repository ppa:gnome3-team/gnome3 -y
	
	##Clementine (Music Player)
	sudo add-apt-repository ppa:me-davidsansome/clementine -y
	
	##Skype
	sudo apt-add-repository "deb http://archive.canonical.com/ubuntu/ trusty partner" -y
	
	##Ubuntu optional packages
	sudo apt-add-repository ppa:maarten-baert/simplescreenrecorder -y

	##Numix Themes & Icons
	sudo add-apt-repository ppa:numix/ppa -y
	sudo add-apt-repository ppa:noobslab/themes -y
	

	##DEV STUFF REPOSITORIES

	##Java 8
	sudo add-apt-repository ppa:webupd8team/java -y
	
	##Git
	sudo add-apt-repository ppa:git-core/ppa -y
	
	##Gitkraken
	wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

	##Atom
	wget https://atom.io/download/deb



#UPDATE THE SYSTEM
sudo apt-get update && sudo apt-get dist-upgrade -y


#INSTALL BASICS
	##Install Nvidia Graphics Driver
	sudo apt-get install nvidia-361 -y

	##Install Google Chrome
	sudo apt-get install google-chrome-stable -y

	##Fix chrome duplicate plank
	sudo sed -i "s/\/usr\/bin\/google-chrome-stable/\/usr\/bin\/google-chrome/g" /usr/share/applications/google-chrome.desktop
	sudo sed -i "s/StartupWMClass=Google-chrome-stable//g" /usr/share/applications/google-chrome.desktop

	##Install File Compression Libs
	sudo apt-get install unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller -y

	##Install Ubuntu Restricted Extras
	sudo apt-get install ubuntu-restricted-extras ubuntu-restricted-addons ffmpeg gstreamer0.10-plugins-ugly libavcodec-extra-54 libvdpau-va-gl1 libmad0 mpg321 gstreamer1.0-libav gdebi curl flashplugin-installer dconf-editor gnome-system-monitor -y

	##Install common repositories manager
	sudo apt-get install software-properties-common -y

	##Enable DVD Playback
	sudo /usr/share/doc/libdvdread4/install-css.sh

	##Install Clementine
	sudo apt-get install clementine -y

	##Install Skype
	sudo apt-get install skype -y
	sudo apt-get install gtk2-engines-murrine:i386 gtk2-engines-pixbuf:i386 -y

	##Install more packages
	sudo apt-get install aptitude apt-file qbittorrent quiterss dconf-editor gnome-system-monitor simplescreenrecorder quassel-qt4 bleachbit kid3-qt calibre pinta unetbootin gnome-disk-utility vlc browser-plugin-vlc build-essential jockey-gtk -y

	##Royal theme & Numix circle icons
	sudo apt-get install numix-icon-theme-circle -y
	sudo apt-get install numix-icon-theme numix-icon-theme-circle royal-gtk-theme

	##Install Unity Tweak Tool 
	sudo apt-get install unity-tweak-tool -y

	##Install slurm (network traffic monitor)
	sudo apt-get install slurm -y

	##Install GIMP
	sudo apt-get install gimp -y


#INSTALL DEVELOPMENT STUFF
	##Install Java 8
	sudo apt-get install oracle-java8-installer -y

	##Install the latest git Version
	sudo apt-get install git -y
	
	##Install Filezilla
	sudo apt-get install filezilla -y

	##Install Gitkraken
	sudo dpkg -i gitkraken-amd64.deb
	rm gitkraken-amd64.deb

	##Install Atom
	sudo dpkg -i atom-amd64.deb
	rm atom-amd64.deb

	##Install Node Version Manager
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash

	##Create a $HOME/WEB directory for projects
	mkdir APPS
	sudo chown $USER: APPS/

# AUTOREMOVE TRASH FILES
sudo apt-get autoremove -y
