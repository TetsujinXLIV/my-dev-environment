```
# Dependencies
# Ubuntu/Pop!_OS
sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
                           libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
                           libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
# Fedora
sudo dnf install -y make gcc openssl-devel zlib-devel bzip2-devel \
                           readline-devel sqlite-devel wget curl llvm \
                           ncurses-devel xz tk-devel libffi-devel xz-devel


# Install python with pyenv
curl https://pyenv.run | bash

# Refresh shell
source ~/.bashrc

# TMP add to path
export PATH="$HOME/.pyenv/bin:$PATH"
# Run evals
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Install python version
pyenv install 3.12

# Setup a python shell
pyenv shell 3.12

# Check version
python --version

# Creates an environment named '.venv' 
python -m venv .venv
# New name
python -m venv venv

# Activate venv
source .venv/bin/activate
source venv/bin/activate

# Deactivate
deactivate

# Add this to the shell .bashrc
# Python Setup
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
source venv/bin/activate

# Add this to the shell .bashrc
# Python Setup
echo >> 'export PATH="$HOME/.pyenv/bin:$PATH"'
echo >> 'eval "$(pyenv init --path)"'
echo >> 'eval "$(pyenv init -)"'
echo >> 'source venv/bin/activate'

# Other options
# Skip global and local setting
# Set global python version
pyenv global 3.12

# if you want it local only
pyenv local 3.12

# Should output Python 3.12.x
python --version
```