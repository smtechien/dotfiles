if [ "$1" == "up" ]; then
    brightnessctl -q s +5%
elif [ "$1" == "down" ]; then
    brightnessctl -q s 5%-
fi
