## Exports

export TERM="xterm-256color"                      

# Deafult apps
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"

# Default folders
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/screenshots"

# cleaning up the home folder
export CALCHISTFILE="$XDG_CACHE_HOME/calc_history"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"

# Path edits
. "/home/nekoy/.local/share/cargo/env"
export PATH="$PATH:${$(find ~/.local/bin -maxdepth 1 -type d -printf %p:)%%:}"

# App options
export FZF_DEFAULT_OPTS="\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

