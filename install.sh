#!/bin/sh

## -----------------------------------
## sway-dotfiles made easy, especially
## for distro-hoppers like myself.
## One never learns...
## -----------------------------------

DIR="$PWD"

## Installing dependencies for Arch/Fedora:
if command -v dnf &> /dev/null; then

    echo "Fedora detected, installing deps.."
    echo "---------------------------------"
    sudo dnf install -y git sway waybar swayidle swaybg swaylock nm-applet thunar flameshot rofi-wayland dunst kitty fish lxpolkit python3-pip pavucontrol eza wget unzip firefox micro
    echo "---------------------------------"
    echo "Dependencies installed..."

elif command -v pacman &> /dev/null; then

    echo "Arch Linux detected, installing deps.."
    echo "---------------------------------"
    sudo pacman -Sy --noconfirm git sway waybar swayidle swaybg swaylock network-manager-applet thunar flameshot rofi-wayland dunst kitty fish lxpolkit python-pip pavucontrol eza wget unzip firefox micro
    echo "---------------------------------"
    echo "Dependencies installed..."
fi

## Installing autotiling from pip
pip install autotiling

mkdir -p ~/.local/share/themes
mkdir -p ~/.local/share/icons
mkdir -p ~/.local/share/fonts
mkdir -p ~/.config
mkdir -p ./tmpfiles

## Installing .config files..
cp -rf ./config/dunst ~/.config
cp -rf ./config/fish ~/.config
cp -rf ./config/kitty ~/.config
cp -rf ./config/micro ~/.config
cp -rf ./config/rofi ~/.config
cp -rf ./config/sway ~/.config
cp -rf ./config/swaylock ~/.config
cp -rf ./config/waybar ~/.config

## Installing fonts..
cp -rf ./local/share/fonts/Overpass ~/.local/share/fonts
mkdir -p ~/.local/share/fonts/RobotoMono
wget -O ./tmpfiles/RobotoMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/RobotoMono.zip"
unzip -d ~/.local/share/fonts/RobotoMono -q ./tmpfiles/RobotoMono.zip

## Setting dark theme for GTK4-apps
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

## Installing Orchis-GTK theme..
cd ./tmpfiles
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme || echo "Cloning Orchis-theme failed? Please check.."
./install.sh -c dark -t red
cd "$DIR"

## Installing Colloid-icon theme..
cd ./tmpfiles
git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme || echo "Cloning Colloid-icon-theme failed? Please check.."
./install.sh -s nord -t red
cd "$DIR"

echo "Installation complete! o/"
echo "Please read the README for info on how to set GTK/Icon theme. o/"