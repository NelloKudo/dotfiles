# dotfiles

my barely edited nord-cynthia bspwm config from [gh0stzk's dotfiles](https://github.com/gh0stzk/dotfiles) ;)

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
- If you use Firefox, I recommend resetting `~/.mozilla` after running the RiceInstaller. It will reset your settings/bookmarks/passwords as well, but I still prefer having classic Firefox over the custom one.

That's pretty much it, enjoy 8)

