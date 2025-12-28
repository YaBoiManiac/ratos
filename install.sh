#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define RatOS locations
export RATOS_PATH="$HOME/.local/share/ratos"
export RATOS_INSTALL="$RATOS_PATH/install"
# export RATOS_INSTALL_LOG_FILE="/var/log/ratos-install.log"
export PATH="$RATOS_PATH/bin:$PATH"

# Install
source "$RATOS_INSTALL/all.sh"
