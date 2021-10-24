#!/bin/bash

# update the system

sudo pacman -Syu

# codecs

sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins vlc

# archive manager

sudo pacman -S 7zip

# conky

sudo pacman -S conky

# fonts and other key packages

sudo pacman -S enchant mythes-en ttf-liberation hunspell-en_US ttf-bitstream-vera pkgstats adobe-source-sans-pro-fonts gst-plugins-good ttf-droid ttf-dejavu aspell-en icedtea-web gst-libav ttf-ubuntu-font-family ttf-anonymous-pro jre8-openjdk ttf-gentium languagetool libmythes

# firewall

sudo pacman -S ufw
sudo ufw enable
sudo ufw status verbose
sudo systemctl enable ufw.service

# remove orphans

sudo pacman -Rns $(pacman -Qtdq)

# optimize pacman database

sudo pacman-optimize

# yay

sudo pacman -S --needed base-devel
sudo pacman -S git
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R  cloudcone:users yay
cd yay
makepkg -si

# xorg

sudo pacman -S xorg

# i3

sudo pacman -S i3

# lightdm

sudo pacman -S lightdm lightdm-gtk-greeter

# linux-firmware

sudo pacman -S linux-firmware

# brightnessctl

sudo pacman -S brightnessctl

# snapd

sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# gh

sudo snap install gh

# vscode

curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/visual-studio-code-bin.tar.gz
tar -xvf visual-studio-code-bin.tar.gz
cd visual-studio-code-bin
makepkg -si

# nvim

sudo pacman -S nvim

# polybar

sudo pacman -S polybar

# rofi

sudo pacman -S rofi

# brave

yay -S brave-bin

# discord

sudo pacman -S discord

# spotify

sudo snap install spotify

# python

sudo pacman -S python

# picom

sudo pacman -S picom

# zsh

sudo pacman -S zsh
chsh -s /usr/bin/zsh

# oh-my-zsh

sudo yay -S oh-my-zsh-git
sudo yay -S nerd-fonts-hack
