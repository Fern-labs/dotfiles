if status is-interactive
    # Commands to run in interactive sessions can go here
end
if test -f ~/.cache/wal/colors.fish
    source ~/.cache/wal/colors.fish
end


# Random fastfetch image
set DOWNLOADS_DIR "/home/fern/Downloads/fastfetch-logos"
set RANDOM_IMAGE (find $DOWNLOADS_DIR -maxdepth 1 -type f -name "*.png" | shuf -n 1)

fastfetch --kitty-direct $RANDOM_IMAGE --logo-height 20 --logo-width 40
