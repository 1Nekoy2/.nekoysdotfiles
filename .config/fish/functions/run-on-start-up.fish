function run-on-start-up

    set chooser (random 1 7) 

    switch $chooser
        case 1
            fortune | cowsay -f kitty | lolcat
        case 2
            neofetch | lolcat
        case 3
            seq 64 | sort --random-sort | spark | lolcat
        case 4
            ~/.config/dotfiles-scripts/colorbars
        case 5
            ~/.config/dotfiles-scripts/colortest
        case 6
            ~/.config/dotfiles-scripts/colortest-slim
        case 7
            ~/.config/dotfiles-scripts/colorwheel
        case '*'
            echo "error" 
    end

end
