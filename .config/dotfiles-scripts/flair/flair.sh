#!/bin/bash

Help()
{
    # Display Help
    echo "An automation to help in adding flair to my scripts"
    echo
    echo "options:"
    echo "b     preset for bash"
    echo "c     preset for css"
    echo

}

main()
{

    echo " #######################################################################################"
    echo
    echo
    figlet -f $SCRIPT_DIR/assets/ANSIShadow.flf "$1" | sed -n 's/^.*/  &/p'
    echo " by $2"
    echo " #######################################################################################"

}

# set variables
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
choice="deafault"
author="Nekoy"

# Get the options
while getopts ":hbcas:" option; do
    case $option in
        h) 
            Help
            exit
        ;;
        b)
            choice="bash" 
        ;;
        c)
            choice="css" 
        ;;
        a)
            author="$OPTARG"
            echo "$OPTARG"
        ;;
    esac
    
done

if [[ "${@: -1}" != -* ]]; then
    case "$choice" in
        deafault) 
            echo
            main ${@: -1} $author
            echo
        ;;
        bash)
            echo
            main ${@: -1} $author | sed -n 's/^.*/#&/p'
            echo
        ;;
        css) 
            echo "/*"
            main ${@: -1} $author | sed -n 's/^.*/#&/p'
            echo "*/"
        ;;
    esac
else
    echo "error"
    exit
fi

