#!/bin/bash
sudo pacman -Syu brave curl rofi polybar zsh neovim git pavucontrol mpv sxiv ranger nodejs npm jdk8-openjdk yarn lolcat audacity cmatrix sl docker etcher lastpass-cli kdenlive feh gimp hardinfo htop hub lightdm neofetch network-manager-applet noto-fonts-emoji obs-studio openssh xfce4-power-manager xfce4-terminal xsel zathura zip net-tools copyq lightdm-gtk-greeter lightdm-gtk-greeter-settings flameshot telegram-desktop
if [ ! -d "~/yay"]; then
  if[ ! -L "yay"]; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
  fi
fi
cd
yay -Syu android-studio heroku-cli insomnia figma-linux slack-desktop nerd-fonts-jetbrains-mono packet-tracer spotify teams zoom whatsapp-for-linux

git clone https://github.com/vinibispo/dotfiles
cp dotfiles/ranger -r .config/
cp dotfiles/nvim -r .config/
cp dotfiles/zsh/.zprofile .zprofile
cp dotfiles/zsh/.zshrc .zshrc
cp dotfiles/polybar -r .config/
cp dotfiles/i3 -r .config/
cp dotfiles/coc -r .config/
cp dotfiles/tmux/.tmux.conf .tmux.conf
cp dotfiles/rofi -r .config/

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/vinibispo/Desktop
git clone https://github.com/vinibispo/Downloads
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
