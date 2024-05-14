# My dotfiles

This directory contains the dotfiles for my system

## Preview

<img src="https://github.com/1Nekoy2/dotfiles/blob/main/.github/preview.png">

## Requirements

Ensure you have the following installed on your system

```
sudo pacman -S paru rustup fish stow
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

start fish to make rust install in the right place
```
fish
```

now install default rust envirament with
```
rustup default stable
```

install rebos
```
cargo install rebos
```

run rebos setup
```
rebos setup
```

now commit changes
```
rebc "initial"
```
or 
```
rebos gen commit "initial"
```

install all other needed packages
```
rebb
```
or
```
rebos gen current build
```

## Source

https://www.youtube.com/watch?v=y6XCebnB9gs&t=223s
