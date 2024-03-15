if status is-interactive
    # Supresses fish's intro message and start something cool :3
    set fish_greeting
       fortune | cowsay -f kitty | lolcat
       echo 
    # automaticaly start tmux
#   if status is-interactive
#   and not set -q TMUX
#       exec tmux
#   end

   #theme
#   fish_config theme save "Catppuccin Mocha"

    # aliases
    alias nvi="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"
    alias la="lsd -hA --group-dirs first"
    alias l="lsd"
    alias ll="lsd -hlA --group-dirs first"
    alias nv="nvim"
    alias cr="clear"
    alias lg="lazygit"
    alias btop="bpytop"
    alias nf="neofetch | lolcat"
    alias catsay="fortune | cowsay -f kitty | lolcat"
    
    #fuzzy finder themeing 
    set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

    #zoxide integration
    zoxide init --cmd cd fish | source
end
