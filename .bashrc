#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

#!/bin/bash

# Path to your Downloads folder
DOWNLOADS_DIR="/home/fern/Downloads/fastfetch-logos"

# Choose a random PNG image from the Downloads folder
RANDOM_IMAGE=$(find "$DOWNLOADS_DIR" -maxdepth 1 -type f -name "*.png" | shuf -n 1)

# Run Fastfetch with the random image
fastfetch --kitty-direct "$RANDOM_IMAGE"
#--logo-height 60 --logo-width 60

#If you want just one image to display
#fastfetch --kitty-direct /home/fern/Downloads/fastfetch-logos/lewd-elf.png --logo-height 20 --logo-width 40




