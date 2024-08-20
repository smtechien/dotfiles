#!/bin/env bash

get-song-title() {
    local status="$(playerctl status)"

    [[ $status == 'Playing' || $status == 'Paused' ]] &&
	  echo -e "$(playerctl metadata title)" || echo -e "Nothing..." 
}

get-song-cover() {
    curl $(playerctl metadata mpris:artUrl) --output ~/.config/eww/assets/cover.png &>/dev/null
    echo -e "background-image: linear-gradient(0deg, rgba(10,17,40,1) 13%, rgba(10,17,40,0.3) 100%), url('./assets/cover.png') ;"
}

get-song-artist() {
    local status="$(playerctl status)"

    [[ $status == 'Playing' || $status == 'Paused' ]] &&
	  echo -e "$(playerctl metadata artist)" || echo -e "....." 
}

did-toggle() {
   playerctl play-pause
}

did-next() {
   playerctl next 
}

did-prev() {
   playerctl prev 
}

case $1 in
    "title") get-song-title;;
    "cover") get-song-cover;;
    "artist") get-song-artist;;
    "toggle") did-toggle;;
    "prev") did-prev;;
    "next") did-next;;
    *) echo "invalid command!";;
esac
