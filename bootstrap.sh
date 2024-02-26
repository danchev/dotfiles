#!/usr/bin/bash
#This script gets executed before codespaces default configuration

# pyenv
sudo apt update; sudo apt install -y build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

. .bashrc && pyenv install 3.11.8 && pyenv global 3.11.8


# pipx
python3 -m pip install --user pipx
python3 -m pipx ensurepath
pipx install argcomplete hatch refurb ruff
