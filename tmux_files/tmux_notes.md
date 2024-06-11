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