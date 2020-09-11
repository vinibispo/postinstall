#!/bin/bash
sudo pacman -Syu brave curl rofi polybar zsh neovim git pavucontrol mpv sxiv ranger nodejs npm jdk-8-openjdk yarn lolcat audacity cmatrix sl docker etcher lastpass-cli kdenlive feh gimp hardinfo htop hub lightdm neofetch network-manager-applet noto-fonts-emoji obs-studio openssh xfce4-power-manager xfce4-terminal xsel zathura zip net-tools copyq lightdm-gtk-greeter lightdm-gtk-greeter-settings flameshot telegram-desktop
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
yay -Syu android-studio heroku-cli insomnia figma-linux slack-desktop nerd-fonts-jetbrains-mono packet-tracer spotify teams zoom whatsapp-for-linux

git clone https://github.com/vinibispo/dotfiles
cp dotfiles/ranger -r .config/
cp dotfiles/nvim -r .config/
cp dotfiles/zsh/.zprofile .zprofile
cp dotfiles/polybar -r .config/
cp dotfiles/i3 -r .config/
cp dotfiles/tmux/.tmux.conf .tmux.conf
cp dotfiles/rofi -r .config/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/vinibispo/Desktop
git clone https://github.com/vinibispo/Downloads
git clone https://github.com/vinibispo/Pictures
