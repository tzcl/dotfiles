# dotfiles
My setup for Arch/i3-gaps

- wm: i3-gaps
- editor: emacs
- terminal: urxvt
- file manager: ranger
- bar: polybar
- compositor: compton
- app launcher: rofi
- music visualiser: cava
- lockscreen: betterlockscreen

wallpaper: [calvin and hobbes flying](http://img.myconfinedspace.com/wp-content/uploads/2013/08/calvin-and-hobbes-flying.jpg)

## Screenshots
https://imgur.com/a/NdCPujc

![sc1](https://i.imgur.com/L9arD33.png)

## Installation
1. Install packages using `sudo pacman -S - < packages`

Also make sure to install AUR packages:
* acpilight
* betterlockscreen
* cava
* google-chrome
* i3lock-color
* megasync
* polybar-git (build from source for more modules)
* spotify

2. Copy config files in .config/etc to proper folders

3. Enable services, etc.

Systemd stuff:
  * pulseaudio
  * networkmanager
  * fstrim.timer (for SSD)
  * thermald
  * tlp and tlp-sleep (mask systemd-rkfill.service and systemd-rfkill.socket)
  
Add user to the video group (for acpilight).

Reconfigure grub to load intel-ucode (`grub-mkconfig -o /boot/grub/grub.cfg`).

Add google's pinyin keyboard to fcitx-config-gtk3.

Need to pass the background image path to wal (`wal -i /path/to/image`) before using `wal -R`.

Make TeXLive package fonts available to fontconfig:
- `ln -s /etc/fonts/conf.avail/09-texlive-fonts.conf /etc/fonts/conf.d/09-texlive-fonts.conf`
- `fc-cache && mkfontscale && mkfontdir`

Build the betterlockscreen cache with `betterlockscreen -u /path/to/image`
