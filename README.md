# ubuntuReady

This is the script I use for all my just installed Ubuntu. I divide the script in:


## Content

- Add all the respositories I need for installing
- Update repositories and update the system.
- Install all basic aplications and packages
  - Nvidia graphics drivers
  - Google Chrome (duplicate plank fixed)
  - Compression stuff
  - Guayadeque
  - Skype
  - Royal Theme && Numix circle icons
  - Unity Tweak Tool
  - Slurm
  - GIMP
  - Basic packages
- Install all development stuff
  - LAMP
  - MongoDB *(config commented with the commands)*
  - Git
  - Filezilla
  - Gitkraken
  - Atom & Atom packages:
    - Emmet
    - Minimap
    - Bootstrap 3 snippets
    - HTML Preview
    - Atom Material Design Theme with dark syntax
    - Atom Beautify
    - Color Picker
    - Pigments
    - Markdown to PDF
    - File Icons
    - Atom Typescript plugin
    - Turbo Javascript
    - PlatformIO IDE Terminal
    - Atom Pair
  - nvm (Node Version Manager)
  - *Create an apps directory for projects storage.*
- Autoremove trash files

## Install

For no having problems with the **apps** directory run it without sudo. A code example for fast and clean install:

```bash
cd
wget https://raw.githubusercontent.com/ulisesantana/ubuntuReady/master/ubuntuReady.sh
sudo chmod +x ubuntuReady.sh
bash ubuntuReady.sh
rm ubuntuReady.sh
```

## Additional steps

ubuntuReady update and install all you need for your Ubuntu, but not configure anything. I mean, ubuntuReady download Royal Theme and Numix Circle Icons, but doesn't set it. For this you must use **Unity Tweak Tool** as I show down. Open Unity Tweak Tools:

Go to *Appereance > Themes*

![Set Royal Theme](https://github.com/ulisesantana/ubuntuReady/raw/master/img/setTheme.png)


Go to *Appereance > Icons*

![Set Numix Circle Icons](https://github.com/ulisesantana/ubuntuReady/raw/master/img/setIcons.png)
