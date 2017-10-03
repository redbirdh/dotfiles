PS1="\[\e[1;32m\][\u@\W] $ \[\e[0m\]"

alias ls='ls -G -h'
alias edit="open -a /Applications/Atom.app"
alias grep='grep --color'
alias v='vim'
alias py='python3'

export PYENV_ROOT="~/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

archey
