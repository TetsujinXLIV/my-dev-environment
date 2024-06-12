#!/bin/bash

# ipmitool -I lanplus -H <ip_address> -U <username> -P <password> chassis power on

# Check if rsync is installed
if ! command -v rsync &> /dev/null
then
    echo "rsync could not be found. Please install it."
    exit
fi

# Source directory (relative to the script location)
SOURCE_DIR="$(dirname "$0")"

# Target directories
TMUX_TARGET="$HOME/.tmux.conf"
WEZTERM_TARGET="$HOME/.wezterm.lua"
NEOVIM_TARGET="$HOME/.config/nvim"

# Rsync options:
# -a: Archive mode (preserves permissions, ownership, timestamps, etc.)
# -u: Update (only copy files if they're newer on the source)
# -v: Verbose (show files being transferred)
RSYNC_OPTS="-auv"

# Copy tmux configuration
echo "Copying tmux configuration..."
rsync $RSYNC_OPTS "$SOURCE_DIR/tmux_files/tmux.conf" "$TMUX_TARGET"

# Copy wezterm configuration
echo "Copying wezterm configuration..."
rsync $RSYNC_OPTS "$SOURCE_DIR/wezterm_files/wezterm.lua" "$WEZTERM_TARGET"

# Copy neovim configuration (entire directory)
echo "Copying neovim configuration..."
rsync $RSYNC_OPTS -r "$SOURCE_DIR/neovim_files/nvim/" "$NEOVIM_TARGET"
