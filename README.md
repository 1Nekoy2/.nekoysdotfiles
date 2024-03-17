# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

```
pacman -S git stow nvim tmux kitty fish zoxide lolcat cowsay fortune-mod lazygit 
```

## Installation

Instal the dotfiles 
```
git clone --recurse-submodules https://github.com/1Nekoy2/dotfiles.git ~/dotfiles && cd ~/dotfiles
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
