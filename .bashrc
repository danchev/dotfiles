# aliases
test -s ~/.alias && . ~/.alias || true

export PATH="$PATH:$HOME.local/bin"

# bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# git prompth
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh --output ~/.git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

