#!/bin/bash

# Script to install dev environment
# Use pyenv to install python
# Setup python environment
# Install Tmux and other dependencies
# Kick off python script
# Plan to support Ubuntu, Pop!_OS, Raspbian, Fedora

# ======================================================================================================================
# Get System Information (Architecture & ID)
if [[ -f /etc/os-release ]]; then
    source /etc/os-release
    ARCHITECTURE=$(uname -m)
    ID=$ID
else
    echo "Unable to determine distribution or architecture"
    exit 1
fi

echo "Running: $ID $ARCHITECTURE"

# ======================================================================================================================
# Install Dependencies 
if [[ $ID == "ubuntu" || $ID == "pop" ]]; then
  sudo apt update
  sudo apt install -y cifs-utils curl git ripgrep tmux tree
  if loginctl show-session $(loginctl session-status | awk '{print $1}') -p Type | grep -q "x11"; then
    sudo apt install -y xsel
  elif loginctl show-session $(loginctl session-status | awk '{print $1}') -p Type | grep -q "wayland"; then
    sudo apt install -y wl-clipboard
  fi
elif [[ $ID == "fedora" ]]; then
  sudo dnf install -y cifs-utils curl git ripgrep tmux tree
  if loginctl show-session $(loginctl session-status | awk '{print $1}') -p Type | grep -q "x11"; then
    sudo dnf install -y xsel
  elif loginctl show-session $(loginctl session-status | awk '{print $1}') -p Type | grep -q "wayland"; then
    sudo dnf install -y wl-clipboard
  fi
elif [[ $ID == "raspbian" ]]; then  # Add Raspbian support
  sudo apt update
  sudo apt install -y cifs-utils curl git ripgrep tmux tree
  if loginctl show-session $(loginctl session-status | awk '{print $1}') -p Type | grep -q "x11"; then
      sudo apt install -y xsel
  fi  # No wl-clipboard for Raspbian (typically uses X11)
else
  echo "Unsupported distribution"
  exit 1
fi

# ======================================================================================================================
# Install pyenv if not present
if ! command -v pyenv &> /dev/null; then
  curl https://pyenv.run | bash
fi

# Source pyenv to make it available in current shell
export PATH=$HOME/.pyenv/bin:$PATH
eval "$(pyenv init --path)" 
echo "TEST"
# Install desired Python version (e.g., 3.12)
if ! pyenv versions | grep -q "3.12"; then  # Check if version already installed
  if ! pyenv install 3.12; then
    echo "Error: Failed to install Python 3.12 using pyenv."
    exit 1  # Exit the script on error
fi
echo "TEST"
# Set the global Python version to the one you just installed
pyenv global 3.12
echo "TEST"
# Create a virtual environment
VENV_DIR="$HOME/.pyvenv"
if [[ ! -d "$VENV_DIR" ]]; then
    python -m venv "$VENV_DIR"
    echo "Python virtual environment created at $VENV_DIR"
else
    echo "Python virtual environment already exists at $VENV_DIR"
fi
echo "TEST"
# Activate virtual environment
source "$VENV_DIR/bin/activate"
echo "TEST"
# Upgrade pip
pip install --upgrade pip

echo "TEST"
# echo "=================================================================================================="
# echo "Please add the following lines to your shell configuration file (.bashrc or .zshrc):"
#echo -e 'export PATH="$HOME/.pyenv/bin:$PATH"'
#echo -e 'eval "$(pyenv init --path)"'
#echo -e 'eval "$(pyenv init -)"'
#echo -e 'eval "$(pyenv virtualenv-init -)"'
# echo "=================================================================================================="