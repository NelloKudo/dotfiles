# dotfiles

my barely edited nord-cynthia bspwm config from [gh0stzk's dotfiles](https://github.com/gh0stzk/dotfiles) ;)

### Gallery 

![image](https://github.com/user-attachments/assets/51fa62dc-d732-4b2a-a13d-662fb5b9837d)

![image](https://github.com/user-attachments/assets/079e1b3b-349d-4a71-af9d-2f2dd9218554)

![image](https://github.com/user-attachments/assets/7a0c1f36-8da1-4b40-8aae-ae7a89e86fcd)


### Installation

- Install [gh0stzk's dotfiles](https://github.com/gh0stzk/dotfiles) using their RiceInstaller
- Install `pavucontrol` and `flameshot` (should be the only hardcoded packages I have!)
- Install `oh-my-zsh` and the [nord-extended](https://github.com/fxbrit/nord-extended) theme
- Install [Colloid-icon-theme](https://github.com/vinceliuice/Colloid-icon-theme) with `./install.sh -s nord`
- Install [JetBrains Mono Nerd Fonts](https://www.nerdfonts.com/font-downloads) in `~/.fonts` or `~/.local/share/fonts`
- Replace the files in `~/.config` with the ones provided (don't delete the rest of them! Just overwrite the provided files in each folder with the ones in the repo). This is just an edit of them indeed, they still depend on the rest xd

A few notes:
- The weather plugin in the bar is set to match my city, you can change it to yours by changing the `CITY` string in `config/bspwm/src/Weather`
- The bspwmrc loads my monitors config at `~/.screenlayout/monitors.sh` that I generated using `arandr`; it's currently commented out in `config/bspwm/bspwmrc` but I really recommend creating your own with arandr for the bars to work properly!
- `picom` is already set to unredir fullscreen apps (needed for games like osu! to have great performance)
- Remember you can change some of picom/bspwm settings by right-clicking on desktop and using `bspwm` > `rice editor`!
- If you use Firefox and want the default look back, delete the `Chrome` and `user.js` file in `~/.mozilla/firefox/*-default-release`
- Spotify's nord theme is from [Spicetify](https://spicetify.app/)'s `Comfy` theme with the Nord color scheme you can choose from the dropdown menu.

That's pretty much it, enjoy 8)

