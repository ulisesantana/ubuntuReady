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

##Skype
sudo apt-add-repository "deb http://archive.canonical.com/ubuntu/ xenial partner" -y

##Ubuntu optional packages
sudo apt-add-repository ppa:maarten-baert/simplescreenrecorder -y

##Numix Themes & Icons
sudo add-apt-repository ppa:numix/ppa -y
sudo add-apt-repository ppa:noobslab/themes -y

## Add Steam repository
sudo add-apt-repository multiverse


##DEV STUFF REPOSITORIES

##Git
sudo add-apt-repository ppa:git-core/ppa -y


##Docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'


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
sudo apt-get install unace unrar zip unzip xz-utils p7zip-full p7zip-rar -y
sudo apt-get sharutils rar uudeview mpack arj cabextract file-roller -y

##Install Ubuntu Restricted Extras
sudo apt-get install ubuntu-restricted-extras ubuntu-restricted-addons ffmpeg -y
sudo apt-get install gstreamer0.10-plugins-ugly libavcodec-extra-54 libvdpau-va-gl1 -y
sudo apt-get install libmad0 mpg321 gstreamer1.0-libav gdebi curl flashplugin-installer -y
sudo apt-get install dconf-editor gnome-system-monitor -y

##Install common repositories manager
sudo apt-get install software-properties-common -y

##Enable DVD Playback
sudo /usr/share/doc/libdvdread4/install-css.sh

##Install Slack
sudo snap install slack --classic 

##Install Skype
sudo apt-get install skype -y
sudo apt-get install gtk2-engines-murrine:i386 gtk2-engines-pixbuf:i386 -y

##Install GNOME Pomodoro Timer
sudo apt-get install gnome-shell-pomodoro -y

##Install Steam
sudo apt-get install steam -y

##Install more packages
sudo apt-get sudo apt-get install aptitude apt-file qbittorrent quiterss dconf-editor  -y
sudo apt-get gnome-system-monitor simplescreenrecorder quassel-qt4  -y
sudo apt-get bleachbit kid3-qt calibre pinta unetbootin gnome-disk-utility  -y
sudo apt-get vlc browser-plugin-vlc build-essential jockey-gtk -y

##Royal theme & Numix circle icons
sudo apt-get install numix-icon-theme numix-icon-theme-circle royal-gtk-theme -y

##Install slurm (network traffic monitor)
sudo apt-get install slurm -y

##Install GIMP
sudo apt-get install gimp -y


#INSTALL DEVELOPMENT STUFF
##Install the latest git Version
sudo apt-get install git -y

##Install docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo usermod -aG docker $USER # Enable use docker without sudo

##Install Node Version Manager
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts

##Install Filezilla
sudo apt-get install filezilla -y

##Install Postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

###Create Postman Launcher
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

##Create a $HOME/projects and $HOME/projects/lab directory for projects
mkdir -p projects/lab

# AUTOREMOVE TRASH FILES
sudo apt-get autoremove -y

# Open for downloads
firefox https://www.jetbrains.com/toolbox/download/download-thanks.html?platform=linux
firefox https://telegram.org/dl/desktop/linux
firefox https://code.visualstudio.com/docs/?dv=linux64_deb