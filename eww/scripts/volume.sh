if [ "$1" == "up" ]; then
    amixer -q sset Master 5%+
elif [ "$1" == "mute" ]; then
    amixer -q sset Master 1+ toggle
elif [ "$1" == "down" ]; then
    amixer -q sset Master 5%-
fi
