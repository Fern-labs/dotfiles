kk#!/bin/bash

CONFIG="$HOME/.config/nitrogen/bg-saved.cfg"

get_wallpaper() {
    grep '^file=' "$CONFIG" | cut -d'=' -f2
}

last_wallpaper=""

# Restore wallpaper and run pywal on startup
#nitrogen --restore

wallpaper=$(get_wallpaper)
if [ -f "$wallpaper" ]; then
    wal -i "$wallpaper"
    last_wallpaper="$wallpaper"
fi

echo "Starting polling wallpaper watcher..."

while true; do
    current_wallpaper=$(get_wallpaper)
    if [ "$current_wallpaper" != "$last_wallpaper" ]; then
        echo "Wallpaper changed to $current_wallpaper, running pywal..."
        wal -i "$current_wallpaper"
        last_wallpaper="$current_wallpaper"
    fi
    sleep 5  # check every 5 seconds, you can adjust this interval
done

