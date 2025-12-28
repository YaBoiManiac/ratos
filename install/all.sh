
run_logged $RATOS_INSTALL/config.sh
run_logged $RATOS_INSTALL/mimetypes.sh
run_logged $RATOS_INSTALL/shh-fixes.sh
run_logged $RATOS_INSTALL/theme.sh

# run hardware install scripts
run_logged $RATOS_INSTALL/hardware/network.sh
run_logged $RATOS_INSTALL/hardware/set-wireless-regdom.sh
run_logged $RATOS_INSTALL/hardware/bluetooth.sh
run_logged $RATOS_INSTALL/hardware/printer.sh
run_logged $RATOS_INSTALL/hardware/usb-autosuspend.sh
run_logged $RATOS_INSTALL/hardware/nvidia.sh
run_logged $RATOS_INSTALL/hardware/fix-f13-amd-audio-input.sh