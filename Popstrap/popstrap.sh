#!/bin/sh
#Bootstrapping script for Debian-based systems:
echo 'Initializing bootstrap'
echo ' '
echo 'Updating system...'
echo ' '
sudo apt update && \
sudo apt upgrade -y
echo ' '
echo 'Installing commonly used packages...'
sudo apt install -y \
	alacritty \
	blender \
	default-jdk \
	deja-dup \
	fd-find \
	ffmpeg \
	fzf \
	gimp \
	git \
	gpick \
	gucharmap \
	htop \
	inkscape \
	krita \
	librecad \
	libreoffice-common \
	lm-sensors \
	lollypop \
	neofetch \
	neovim \
	nnn \
	pavucontrol \
	scribus \
	tmux \
	texlive-full \
	toilet \
	tree \
	vim-gtk \
	vlc \
	youtube-dl
echo ' '
echo 'Package installation complete.'
echo ' '
echo 'Installing Zotero...'
echo ' ' 
flatpak install flathub org.zotero.Zotero
echo ' '
echo 'Capturing dotfiles...'
git clone git@github.com:argosatcore/Pop_Dots.git
echo ' '
mv ~/Pop_Dots/.config/alacritty/ ~/.config
mv ~/Pop_Dots/.config/nvim/ ~/.config
mv ~/Pop_Dots/README.md ~/
mv ~/Pop_Dots/LICENSE ~/
mv ~/Pop_Dots/Popstrap/ ~/
mv ~/Pop_Dots/.git ~/
sudo mv ~/Pop_Dots/.vim/ ~/
sudo mv ~/Pop_Dots/.bash* ~/
sudo mv ~/Pop_Dots/.profile ~/
sudo mv ~/Pop_Dots/.vimrc ~/
sudo mv ~/Pop_Dots/config/mimeapps.list ~/.config
mv ~/Pop_Dots/.tmux.conf ~/
mv ~/Pop_Dots/.inputrc ~/
mv ~/Pop_Dots/.Xdefaults ~/
rm -rf Pop_Dots/ 
echo ' '
echo 'Bootstrapping complete. Welcome back, Argos.'
