# aliases
test -s ~/.alias && . ~/.alias || true

# bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$PATH:$HOME.local/bin"
