# My dotfiles

This directory contains the dotfiles for my system

## Preview

<img src="https://github.com/1Nekoy2/dotfiles/blob/main/.github/preview.png">

## Requirements

Ensure you have the following installed on your system

```
yay -S git stow nvim tmux kitty fish zoxide lolcat cowsay fortune-mod lazygit hyprland hyprlock hypridle wlogout swww mako bpytop figlet firefox ranger rofi brightnessctl starship
```

## Installation

Instal the dotfiles 
```
git clone --recurse-submodules https://github.com/1Nekoy2/.nekoysdotfiles.git ~/.nekoysdotfiles && cd ~/.nekoysdotfiles
```
or
```
git clone --recurse-submodules git@github.com:1Nekoy2/.nekoysdotfiles.git ~/.nekoysdotfiles && cd ~/.nekoysdotfiles
```

then use GNU stow to create symlinks

```
stow .
```

instal tpm
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
and then install the tmux plugins with the use of **prefix + I**
## Source

https://www.youtube.com/watch?v=y6XCebnB9gs&t=223s
