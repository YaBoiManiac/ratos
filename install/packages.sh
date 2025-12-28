# Install all base packages
mapfile -t base_packages < <(grep -v '^#' "$RATOS_PATH/packages/pacman.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${base_packages[@]}"

# Install all yay packages
mapfile -t yay_packages < <(grep -v '^#' "$RATOS_PATH/packages/yay.packages" | grep -v '^$')
yay -S --noconfirm --needed "${yay_packages[@]}"