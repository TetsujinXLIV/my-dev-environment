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