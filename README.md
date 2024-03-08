# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

```
pacman -S git stow nvim tmux kitty fish zoxide lolcat cowsay fortune-mod lazygit 
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com/dreamsofautonomy/dotfiles.git
```

```
cd dotfiles
```

then use GNU stow to create symlinks

```
stow .
```
