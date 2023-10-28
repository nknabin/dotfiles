#!/usr/bin/env bash

# install other programs

if [ ! -d $HOME/opt ]; then
	mkdir $HOME/opt
fi

sudo apt install -y linux-headers-generic
sudo apt install -y build-essential git wget curl tmux rsync

# virtualization kvm/qemu/libvirt
sudo apt install -y qemu-system libvirt-daemon-system virt-manager
sudo adduser $USER libvirt

# wayland
#sudo apt install wl-clipboard

# build neovim
if [ -z $(command -v nvim) ]; then
    # prerequisite
    sudo apt install -y ninja-build gettext cmake unzip curl

    cd ~/opt
    git clone https://github.com/neovim/neovim
    cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
fi

# nvm
if [ ! -d ~/.nvm ]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
fi

# go
if [ -z $(command -v go) ]; then
    cd /tmp
    wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz

    sudo rm -rf /usr/local/go
    sudo tar -C /usr/local -xzf go1.21.3.linux-amd64.tar.gz

    echo "export GO_ROOT=/usr/local/go" >> ~/.bashrc
    echo "export GO_HOME=\$HOME/go" >> ~/.bashrc

    echo "export PATH=\$GO_HOME/bin:\$GO_ROOT/bin:\$PATH" >> ~/.bashrc

    . ~/.bashrc
    echo $(go version) is installed
fi

# doom emacs
sudo apt install -y ripgrep fd-find emacs

if [ ! -d $HOME/.config/emacs ]; then
    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
    ~/.config/emacs/bin/doom install
fi

# apache2
sudo apt install -y apache2

# mariadb
sudo apt install -y mariadb-server
echo "Mysql has been installed. Run mysql_secure_installation."

# php fpm
sudo apt install -y php php-fpm libapache2-mod-php php-mysql
sudo a2enmod alias proxy proxy_fcgi

# phpmyadmin
sudo apt install -y phpmyadmin

# utils
sudo apt install gimp blender

. ~/.bashrc

# restart servers
sudo systemctl restart apache2
sudo systemctl restart mariadb
sudo systemctl restart php8.2-fpm

# setup dotfiles

if [ ! -d $HOME/.config ]; then
    mkdir $HOME/.config
fi

ln -s $HOME/code/dotfiles/.tmux.conf $HOME/.tmux.conf

ln -s $HOME/code/dotfiles/.config/shell $HOME/.config/shell
ln -s $HOME/code/dotfiles/.config/doom $HOME/.config/doom
ln -s $HOME/code/dotfiles/.config/nvim $HOME/.config/nvim

echo "Please reboot your system to complete the system."
