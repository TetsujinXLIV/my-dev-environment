# my-dev-environment
Repo for easy setup of preferred development environment

# Tools Covered in this Setup
- [Alacritty](#alacritty)
  - [Installation](#installation-alacritty)
- [tmux](#tmux)
  - [Installation](#installation-tmux)
- [neovim](#neovim)
  - [Installation](#installation-neovim)

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


# neovim
## Installation neovim

#### Linux
- Install neovim
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Add to .bashrc
export PATH="$PATH:/opt/nvim-linux64/bin"
echo -e 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc

# Reload
source ~/.bashrc
```
- Install a font
  - Download font from
  https://www.nerdfonts.com/
  - Extract the files
  - Move the files to either
    - System wide
      `/usr/local/share/fonts/`
    - Specific user
      `~/.local/share/fonts/` or `~/.fonts`
  - Then rebuild font cache:
    `fc-cache -fv`
- Dependencies
  `sudo apt-get install ripgrep`

#### MacOS
- Install neovim
  - Get latest relase from here
  https://github.com/neovim/neovim/blob/master/INSTALL.md
- Install a font
  - Download font from
  https://www.nerdfonts.com/
  - Extract the files
  - Open Fonts app on Mac
  - Add custom font and pick font you extracted

#### Windows
- Install neovim
  - Get latest relase from here
  https://github.com/neovim/neovim/blob/master/INSTALL.md
- Install a font
  - Download font from
  https://www.nerdfonts.com/
  - Extract the files
  - Right click the font file and hit install

## Configuration
- Need to make a similar tree of files like this one.
- Change the name to any user
#### Tree
```
/home/david/.config/nvim
.
├── init.lua
├── lazy-lock.json
└── lua
    ├── david
    │   ├── core
    │   │   ├── init.lua
    │   │   ├── keymaps.lua
    │   │   └── options.lua
    │   ├── lazy.lua
    │   └── plugins
    │       ├── colorscheme.lua
    │       ├── init.lua
    │       └── nvim-tree.lua
    └── lazy-lock.json
```
#### nvim/init.lua
- This file just contains links to other files for easy calling
#### lazy-lock.json
- Nothing to do with this file. Data about plugins stored here

#### nvim/lua/david/lazy.lua
- TBD

#### nvim/lua/david/core/init.lua
- Sets easier variables for calling

#### nvim/lua/david/core/keymaps.lua
- Sets various keymapping shortcuts

#### nvim/lua/david/core/options.lua
- Sets various options for nvim

#### nvim/lua/david/plugins/init.lua
- Sets initialization for plugins

#### nvim/lua/david/plugins/colorscheme.lua
- Configure desired color schemed for nvim

#### nvim/lua/david/plugins/nvim-tree.lua
- Configure better nvim file tree