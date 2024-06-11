# neovim
## Installation neovim
#### Ubuntu

#### Linux x64
- Install neovim
- NOTE: Stay on 0.9.5 for now
```
# Latests
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

# 0.9.5
curl -LO https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz

# Install
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
  - Download FiraCode Nerd Font
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

#### Linux Arm64
- Install neovim
```
# Install dependencies
sudo apt install -y ripgrep ninja-build gettext cmake unzip curl

# 0.9.5
curl -LO https://github.com/neovim/neovim/archive/refs/tags/v0.9.5.tar.gz
tar -xvf v0.9.5.tar.gz
cd neovim-0.9.5
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
sudo make install

# Add to .bashrc
export PATH="$PATH:$HOME/neovim/bin"
echo -e 'export PATH="$PATH:$HOME/neovim/bin"' >> ~/.bashrc

# Reload
source ~/.bashrc
```

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