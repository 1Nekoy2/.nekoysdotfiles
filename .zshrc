## Set the directory we want to store zinit and plugins

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

## Download Zinit, if it's not there yet

if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

## Source/Load zinit

source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

# Turn off all beeps
unsetopt BEEP

zinit cdreplay -q

# vi mode
bindkey -v
export KEYTIMEOUT=1

# History
HISTSIZE=5000
HISTFILE=$XDG_DATA_HOME/zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

## aliases

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# nvim
alias nv="nvim"
alias nvi="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"

# package menagers 
alias paru="systemd-inhibit --what=idle paru"
alias eos-update="systemd-inhibit --what=idle eos-update"

# tmux
alias t="tmux"
alias tm="tmux new-session -A -s main"

# ls to exa
alias l="exa --icons --group-directories-first"
alias la="exa -ha --icons --group-directories-first"
alias ll="exa -hlagBmU --icons --group-directories-first"
alias lt="exa -haT --icons --level 5"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# Play audio files in current dir by type
alias playwav='vlc *.wav'
alias playogg='vlc *.ogg'
alias playmp3='vlc *.mp3'

# Play video files in current dir by type
alias playavi='vlc *.avi'
alias playmov='vlc *.mov'
alias playmp4='vlc *.mp4'

# Rebos
alias rebl='rebos gen list'
alias rebc='rebos gen commit'
alias rebb='systemd-inhibit --what=idle rebos gen current build'
alias rebsync="systemd-inhibit --what=idle rebos managers sync"
alias rebupgrade="systemd-inhibit --what=idle rebos managers upgrade"

# switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /usr//bin/fish && echo 'Now log out.'"

# shortend commands
alias icat="kitten icat"
alias cr="clear"
alias lg="lazygit"
alias btop="bpytop"
alias nf="fastfetch"

# fun
alias catsay="fortune | cowsay -f kitty | lolcat"
alias flair="~/.config/dotfiles-scripts/flair/flair.sh"
alias cflair="~/.config/dotfiles-scripts/flair/flair.sh * | wl-copy"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# n/a
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'

## Shell integrations

eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
eval "$(starship init zsh)"
