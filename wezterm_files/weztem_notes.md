# Wezterm
## Installation Wezterm
#### Ubuntu
```
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

sudo apt update
sudo apt install wezterm

```

#### Fedora
```
# Use Copr to stay updated
sudo dnf copr enable wezfurlong/wezterm-nightly
sudo dnf install wezterm

# To update
sudo dnf update wezterm

# Download from website
https://wezfurlong.org/wezterm/install/linux.html#__tabbed_1_5

sudo dnf install -y <*.rpm>
```

#### MacOS
- Navigate to `https://wezfurlong.org/wezterm/install/macos.html`

#### Windows
- Navigate to `https://wezfurlong.org/wezterm/install/windows.html`

## Customization
- In home directory create new config file `.wezterm.lua`
- Use the file that is in the wezterm_files directory
