#!/bin/bash

# Script to install dev environment

# Ubuntu and Raspbian ONLY

# Install Tmux
sudo apt-get update
sudo apt-get install -y tmux

# Setup TMUX TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Move TMUX configuration file
cp tmux_files/tmux.conf ~/.tmux.conf

# Tell user needs to manuall install plugins
# TODO: Install plugins
# TODO: Install neovim