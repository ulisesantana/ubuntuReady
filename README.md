# ubuntuReady

This is the script I use for all my just installed Ubuntu. I divide the script in:


## Content

- Add all the respositories I need for installing
- Update repositories and update the system.
- Install all basic aplications and packages
  - Nvidia graphics drivers
  - Google Chrome (duplicate plank fixed)
  - Compression stuff
  - Clementine
  - Skype
  - Royal Theme && Numix circle icons
  - Unity Tweak Tool
  - Slurm
  - GIMP
  - Basic packages
- Install all development stuff 
  - Java 8 JDK
  - Git
  - Filezilla
  - Gitkraken
  - Atom
  - nvm (Node Version Manager)
  - *Create an APPS directory for storage projects.*

## Install

For no having problems with the **APPS** directory run without sudo. A code example for clean and fast install:

```bash
cd
wget https://raw.githubusercontent.com/ulisesantana/ubuntuReady/master/ubuntuReady.sh
sudo chmod +x ubuntuReady.sh
bash ubuntuReady.sh
rm ubuntuReady.sh
```

## Aditional steps

ubuntuReady update and install all you need for your Ubuntu, but not configure anything. I mean, ubuntuReady download Royal Theme and Numix Circle Icons, but doesn't set it. For this you must use **Unity Tweak Tool** as I show down.

![Set Royal Theme](https://github.com/ulisesantana/ubuntuReady/raw/master/img/setTheme.png)
*Appereance > Themes*

![Set Numix Circle Icons](https://github.com/ulisesantana/ubuntuReady/raw/master/img/setIcons.png)
*Appereance > Icons*


