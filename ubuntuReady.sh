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

##Guayadeque (Music Player)
sudo add-apt-repository ppa:anonbeat/guayadeque -y

##Skype
sudo apt-add-repository "deb http://archive.canonical.com/ubuntu/ trusty partner" -y

##Ubuntu optional packages
sudo apt-add-repository ppa:maarten-baert/simplescreenrecorder -y

##Numix Themes & Icons
sudo add-apt-repository ppa:numix/ppa -y
sudo add-apt-repository ppa:noobslab/themes -y


##DEV STUFF REPOSITORIES

##Git
sudo add-apt-repository ppa:git-core/ppa -y

##Gitkraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

##Atom
wget https://github.com/atom/atom/releases/download/v1.9.8/atom-amd64.deb



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

##Install Guayadeque
sudo apt-get install guayadeque -y

##Install Skype
sudo apt-get install skype -y
sudo apt-get install gtk2-engines-murrine:i386 gtk2-engines-pixbuf:i386 -y

##Install more packages
sudo apt-get install aptitude apt-file qbittorrent quiterss dconf-editor gnome-system-monitor simplescreenrecorder quassel-qt4 bleachbit kid3-qt calibre pinta unetbootin gnome-disk-utility vlc browser-plugin-vlc build-essential jockey-gtk -y

##Royal theme & Numix circle icons
sudo apt-get install numix-icon-theme-circle -y
sudo apt-get install numix-icon-theme numix-icon-theme-circle royal-gtk-theme -y

##Install Unity Tweak Tool
sudo apt-get install unity-tweak-tool -y

##Install slurm (network traffic monitor)
sudo apt-get install slurm -y

##Install GIMP
sudo apt-get install gimp -y


#INSTALL DEVELOPMENT STUFF
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

##Install Atom packages
apm install atom-beautify
apm install atom-bootstrap3
apm install atom-html-preview
apm install atom-material-syntax-dark
apm install atom-material-ui
apm install atom-terminal
apm install atom-typescript
apm install color-picker
apm install emmet
apm install file-icons
apm install language-javascript-jsx
apm install linter
apm install markdown-pdf
apm install minimap
apm install pigments
apm install turbo-javascript
apm install platformio-ide-terminal

##Configrate Markdown Preview fixing Emmet Keybindign issue
echo "'atom-workspace, atom-workspace atom-text-editor':
  'ctrl-shift-alt-M': 'markdown-preview:toggle'" >> $HOME/.atom/keymap.cson

##Add a auto indent shortcut (alt+shift+f)
echo "'alt-shift-f': 'editor:auto-indent'" >> $HOME/.atom/keymap.cson

##Install Node Version Manager
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

##Create a $HOME/apps directory for projects
mkdir apps

# AUTOREMOVE TRASH FILES
sudo apt-get autoremove -y
