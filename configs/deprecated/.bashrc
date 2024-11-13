# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

set -o vi

alias vi="nvim "
alias sudo="sudo "

# PS1 prompt
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[1m\][\[\e[0m\]\u\[\e[1m\]@\[\e[0m\]\h\[\e[1m\]:\[\e[33m\]\w\[\e[39m\]]-(\[\e[93;2m\]${PS1_CMD1}\[\e[0;1m\])\n\$>\[\e[0m\] '

export EDITOR='nvim'
