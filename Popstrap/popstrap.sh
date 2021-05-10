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
	blender \
	default-jdk \
	deja-dup \
	ffmpeg \
	fzf \
	gimp \
	git \
	gpick \
	gucharmap \
	htop \
	inkscape \
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
	vim-gtk \
	vlc \
	youtube-dl
echo 'Installing Zotero...'
echo ' ' 
flatpak install flathub org.zotero.Zotero
echo ' '
echo 'Capturing dotfiles...'
git clone git@github.com:argosatcore/Pop_Dots.git
echo ' '
cd Pop_Dots
git clone 
echo ' '
echo 'Bootstrapping complete. Welcome back, Argos.'
