# my-dev-environment
Repo for easy setup of preferred development environment

# Tools Covered in this Setup
- [wezterm](#wezterm)
  - [Installation](#installation-wezterm)
- [tmux](#tmux)
  - [Installation](#installation-tmux)
- [Custom Fetch Welcome](#custom-fetch-welcome)
  - [Installation](#install-welcome-message)
- [Alacritty](#alacritty)
  - [Installation](#installation-alacritty)


# Wezterm
## Installation Wezterm
#### Ubuntu
```
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

sudo apt update
sudo apt install wezterm

```

#### MacOS
- Navigate to `https://wezfurlong.org/wezterm/install/macos.html`

#### Windows
- Navigate to `https://wezfurlong.org/wezterm/install/windows.html`

## Customization
- In home directory create new config file `.wezterm.lua`
- Use the file that is in the wezterm_files directory


# tmux
## Installation tmux
#### Ubuntu
```
sudo apt-get update
sudo apt-get install -y tmux
```

#### MacOS
- TBD

#### Windows
- TBD


## Customization
- In home directory create new config file `.tmux.conf`
- Use the file that is in the tmux_files directory
- Need to install tpm plugin manager
- Linux
  `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## Notes
```
# create session with name detached
tmux new-session -d -s <some_name>

# create session with name
tmux new-session -s <some_name>

# switch between sessions while in tmux 
ctrl+<tmux-cmd> s

# rename session
tmux rename -t <old> <new>

# Reload tmux
ctrl+<tmux-cmd> :source-file ~/.tmux.conf

# Install plugins
ctrl+<tmux-cmd> Shift+i

# Navigation of panes with plugins
Ctrl+(h j k l) 
h - left
j - down
k - up
l - right

# New Tmux Window
ctrl+<tmux-cmd> c

# Switch windows
ctrl+<tmux-cmd> <window-number>

# Next window
ctrl+<tmux-cmd> n

# Previous window
ctrl+<tmux-cmd> p

# Rename window
ctrl+<tmux-cmd> ,

# See all windows
ctrl+<tmux-cmd> w

# Tmux resurrect
# Save
ctrl+<tmux-cmd> ctrl+s
# Restore
ctrl+<tmux-cmd> ctrl+r
```

# Custom Fetch Welcome
- Created a custom script to print out when you ssh in but not when TMUX session is created.
- Replaces neofetch, faster, more custom, less OS support.
- Only supports Linux with emphasis on Ubuntu and Raspbian.
## Install Welcome Message
#### Linux - ONLY
```
sudo cp morenofetch/morenofetch /usr/bin/
sudo chmod +x /usr/bin/morenofetch

nvim ~/.bashrc

# Add the lines to the end

# Check if not in a tmux session
if [[ -z "$TMUX" ]]; then
    # Run your custom script here (replace 'script_name.sh' with the actual filename)
    morenofetch
fi

# Save and exit
source ~/.bashrc
```

# Alacritty
## Installation Alacritty
#### Ubuntu
```
# Install Alacritty with Cargo
sudo apt-get update
sudo apt-get install -y cargo
cargo install alacritty

# Add to path
sudo cp ~/.cargo/bin/alacritty /usr/local/bin

# Create Desktop Icon And shortcut

# From the GitHub download
Alacritty.svg
Alacritty.desktop

sudo mv Alacritty.svg /usr/share/pixmaps/

sudo desktop-file-install Alacritty.desktop
sudo update-desktop-database

# Might have to run it once in normal terminal then you should be able to pin it.
```

#### MacOS
- Download precompiled version from GitHub releases

#### Windows
- Download precompiled version from GitHub releases
- To change starting directory
  - Right click Alacritty and go to properties.
  - In the 'Start in:' location add: `%USERPROFILE%`
  - Apply changes
- Might need to change it in multiple locations like
`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Alacritty`

## Custom Configurations
- Need to setup a config file
- File located in `alacritty_files`
- Linux/MacOS
`$HOME/.config/alacritty/alacritty.toml`
- Windows
`%APPDATA%\alacritty\alacritty.toml`

## Notes
https://alacritty.org/
https://github.com/alacritty/alacritty