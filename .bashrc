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

# gpg
export GPG_TTY=$(tty)
if [ -z "$GPG_AGENT_INFO" ]; then
    eval "$(gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf)"
fi

# ssh
if [ -z "$SSH_AUTH_SOCK" ]; then
    SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
    export SSH_AUTH_SOCK
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# i3 workaround
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
