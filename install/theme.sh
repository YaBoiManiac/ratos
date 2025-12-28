# Set links for Nautilius action icons
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-previous-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-previous-symbolic.svg
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-next-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-next-symbolic.svg

# Setup theme links
mkdir -p ~/.config/ratos/themes
for f in ~/.local/share/ratos/themes/*; do ln -nfs "$f" ~/.config/ratos/themes/; done

# Set initial theme
mkdir -p ~/.config/ratos/current
ln -snf ~/.config/ratos/themes/tokyo-night ~/.config/ratos/current/theme
ln -snf ~/.config/ratos/current/theme/backgrounds/1-scenery-pink-lakeside-sunset-lake-landscape-scenic-panorama-7680x3215-144.png ~/.config/ratos/current/background

# Set specific app links for current theme
# ~/.config/ratos/current/theme/neovim.lua -> ~/.config/nvim/lua/plugins/theme.lua is handled via ratos-setup-nvim
mkdir -p ~/.config/btop/themes
ln -snf ~/.config/ratos/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
ln -snf ~/.config/ratos/current/theme/mako.ini ~/.config/mako/config

# Add managed policy directories for Chromium and Brave for theme changes
sudo mkdir -p /etc/chromium/policies/managed
sudo chmod a+rw /etc/chromium/policies/managed

sudo mkdir -p /etc/brave/policies/managed
sudo chmod a+rw /etc/brave/policies/managed
