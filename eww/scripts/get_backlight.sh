brightness=$(($(brightnessctl -q g) * 100 / 255))
echo $brightness
