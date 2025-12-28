# Copy over RatOS configs
mkdir -p ~/.config
cp -R ~/.local/share/ratos/config/* ~/.config/

# Use default bashrc from RatOS
cp ~/.local/share/ratos/default/bashrc ~/.bashrc
