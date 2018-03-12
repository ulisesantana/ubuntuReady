# ubuntuReady

This is the script I use for all my just installed Ubuntu. I divide the script in:


## Content

- Add all the respositories I need for installing
- Update repositories and update the system.
- Install all basic aplications and packages
  - Nvidia graphics drivers
  - Google Chrome
  - Compression stuff
  - Skype
  - Slack
  - Steam
  - Telegram
  - GNOME Pomodoro Timer
  - Royal Theme && Numix circle icons
  - Slurm
  - GIMP
  - Basic packages
- Install all development stuff
  - Git
  - Filezilla
  - Docker
  - Postman
  - nvm (Node Version Manager)
  - *Create a projects directory for projects storage. Also creates a lab directory inside projects.*
- Autoremove trash files

## Install

For no having problems with the **projects** directory run it without sudo. A code example for fast and clean install:

```bash
cd
wget https://raw.githubusercontent.com/ulisesantana/ubuntuReady/master/ubuntuReady.sh
sudo chmod +x ubuntuReady.sh
bash ubuntuReady.sh
rm ubuntuReady.sh
```

