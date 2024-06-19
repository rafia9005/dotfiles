echo "Install starting..."
echo ""
pacman -Syu
pacman -S hyprland wlogout wayabr wofi kitty alacritty

echo "setting up config"
cp -r * ~/.config

echo ""
echo "install is succes"
echo "Type [Hyprland] on terminal to start Hyprland"
