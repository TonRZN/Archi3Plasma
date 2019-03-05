#After installing Arch Linux

Simple things to do after a clean install of Arch Linux
Will provide a i3-gaps + Plasma 5 KDE graphical environment  

###Add new user
```bash
useradd -m -G wheel [USER]
```

**Modify the /etc/sudoers according to your preferences**
I usually uncomment the line `%wheel ALL=(ALL) NOPASSWD: ALL` but you can just uncomment the `%wheel ALL=(ALL) ALL` which is more secure

###Install graphical interface
**Install X display server**
```bash
sudo pacman -S xorg-server xorg-init
```

**Install i3-gaps**
```bash
sudo pacman -S i3-gaps rofi feh
```

**Install KDE Plasma**
```bash
sudo pacman -S plasma-desktop
echo 'exec startkde' >> ~/.xinitrc
```

**Install LightDM display manager**
```bash
sudo pacman -S lightdm lightdm-gtk-greeter
sudo systemctl enable lightdm.service
```

**Install GIT**
```bash
sudo pacman -S git
```

###Install basic applications
*This will install a terminal emulator, a file manager, a browser and a code/text editor*
```bash
sudo pacman -S konsole dolphin firefox code
```

**Install yaourt**
```bash
sudo pacman -S --needed wget yajl
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si
cd ..
```

```bash
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si
cd ..
sudo rm -dR yaourt/ package-query/
```

**Install Fish shell and Oh My Fish!**
```bash
sudo pacman -S fish
curl -L https://get.oh-my.fish | fish
omf install bobthefish
```

**Install powerline**
```bash
sudo pacman -S powerline powerline-fonts
```

**Install key packages**
```bash
sudo pacman -S adobe-source-sans-pro-fonts aspell-en enchant gst-libav gst-plugins-good icedtea-web jre8-openjdk languagetool libmythes mythes-en pkgstats ttf-anonymous-pro ttf-bitstream-vera ttf-dejavu ttf-droid ttf-gentium ttf-liberation ttf-ubuntu-font-family
```

**Install audio system**
```bash
sudo pacman -S pulseaudio pulseaudio-alsa plasma-pa
```

**Install Plasma utilities**
```bash
sudo pacman -S breeze-gtk breeze-kde4 kde-gtk-config
sudo pacman -S kdeplasma-addons
```

```bash
sudo pacman -S ark kinfocenter kwalletmanager gwenview kipi-plugins gimp spectacle libreoffice-fresh okular speedcrunch deluge kfind kscreen
```