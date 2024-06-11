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