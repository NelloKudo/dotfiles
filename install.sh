#!/bin/sh

## -----------------------------------
## sway-dotfiles made easy, especially
## for distro-hoppers like myself.
## One never learns...
## -----------------------------------

DIR="$PWD"

mkdir -p ./tmpfiles
mkdir -p ~/.local/share/themes
mkdir -p ~/.local/share/icons
mkdir -p ~/.local/share/fonts
mkdir -p ~/.local/bin
mkdir -p ~/.config


## Installing dependencies for Arch/Fedora:
if command -v dnf &> /dev/null; then

    echo "Fedora detected, installing deps.."
    echo "---------------------------------"
    sudo dnf install -y git sway waybar swayidle swaybg swaylock nm-applet thunar flameshot rofi-wayland dunst kitty fish lxpolkit python3-pip pavucontrol eza wget unzip firefox micro luajit epapirus-icon-theme wl-clipboard playerctl light

	## Installing autotiling from pip
	pip install autotiling

    echo "---------------------------------"
    echo "Dependencies installed..."

elif command -v pacman &> /dev/null; then

    echo "Arch Linux detected, installing deps.."
    echo "---------------------------------"
    sudo pacman -Sy --noconfirm git sway waybar swayidle swaybg swaylock grim xdg-desktop-portal-gtk autotiling lxsession network-manager-applet thunar flameshot rofi-wayland dunst kitty fish python-pip pavucontrol eza wget unzip firefox micro luajit epapirus-icon-theme wl-clipboard playerctl
    
    ## Installing light from AUR
    cd ./tmpfiles
    git clone https://aur.archlinux.org/light.git
    cd light
    makepkg -si --noconfirm
    cd "$DIR"

    ## Symlinking autotiling to ~/.local/bin
    ln -s /usr/bin/autotiling ~/.local/bin
	
    echo "---------------------------------"
    echo "Dependencies installed..."
fi

echo "Installing config, please wait..."

## Installing .config files..
cp -rf ./config/dunst ~/.config
cp -rf ./config/fish ~/.config
cp -rf ./config/kitty ~/.config
cp -rf ./config/micro ~/.config
cp -rf ./config/rofi ~/.config
cp -rf ./config/sway ~/.config
cp -rf ./config/swaylock ~/.config
cp -rf ./config/waybar ~/.config

echo "Installing themes and fonts, please wait..."

## Installing fonts..
cp -rf ./local/share/fonts/Overpass ~/.local/share/fonts

mkdir -p ~/.local/share/fonts/RobotoMono
wget -O ./tmpfiles/RobotoMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/RobotoMono.zip"
unzip -d ~/.local/share/fonts/RobotoMono -q ./tmpfiles/RobotoMono.zip

mkdir -p ~/.local/share/fonts/FiraCodeMono
wget -O ./tmpfiles/FiraCodeMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip"
unzip -d ~/.local/share/fonts/FiraCodeMono -q ./tmpfiles/FiraCodeMono.zip

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

## Cleaning tmpfiles..
rm -rf "$DIR/tmpfiles"

echo "Changing default shell.."

## Changing default shell to fish..
chsh -s $(which fish)

echo "Installation complete! o/"
echo "Please read the README for info on how to set GTK/Icon theme. o/"
