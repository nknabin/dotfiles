#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm --needed base-devel git go

cd ~
if [[ ! -d yay ]]; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
fi

sudo pacman -S --noconfirm --needed \
     xorg-server \
     xorg-xinit \
     swaylock swaybg swayidle swayimg \
     pipewire pipewire-docs wireplumber pipewire-alsa pipewire-pulse pipewire-audio pavucontrol \
     xf86-video-intel ffmpeg vlc mpv \
     bluez bluez-utils blueman \
     noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-dejavu ttf-iosevka-nerd otf-font-awesome \
     nemo nemo-fileroller \
     libreoffice-still \
     xss-lock i3lock \
     kitty terminator \
     gparted \
     xclip wl-clipboard copyq \
     htop \
     neovim neovim-qt \
     chromium firefox torbrowser-launcher \
     flameshot grim slurp \
     python-pip \
     jre-openjdk jdk-openjdk \
     tmux \
     the_silver_searcher \
     dmenu wofi \
     zathura \
     gimp \
     xdg-desktop-portal xdg-desktop-portal-wlr \
     ydotool \
     gnome-themes-extra adwaita-qt5 adwaita-qt6 \
     imv \
     jq

yay -S --noconfirm --needed \
    xinit-xsession \
    google-chrome

# set up spacemacs
sudo pacman -S --noconfirm --needed emacs
if [[ ! -d ~/.emacs.d ]]; then 
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
else
    echo "~/.emacs.d already exists!"
fi
