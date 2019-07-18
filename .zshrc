export LANG=ja_JP.UTF-8

setopt print_eight_bit
setopt prompt_subst
setopt auto_cd

autoload -Uz colors && colors

# 色一覧を表示
# for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo
# 特殊文字: vimでctrl + v -> esc
COLOR_BG="%{[30;48;5;017m%}"
COLOR_1="%{[1;38;5;001m%}"
COLOR_2="%{[1;38;5;040m%}"
COLOR_3="%{[1;38;5;214m%}"
COLOR_4="%{[1;38;5;148m%}"
COLOR_5="%{[1;38;5;032m%}"
COLOR_END="%{[0m%}"
# PROMPT="%{${fg_bold[green]}%}[zsh:%n] %c ▶ %{${reset_color}%}"
PROMPT="${COLOR_BG}${COLOR_2}[%n@%m]${COLOR_END}${COLOR_3} %c ${COLOR_1}▷ ${COLOR_END}"
# RPROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}"
RPROMPT="%(?.${COLOR_4}.${COLOR_5})%(?!(^ω ^ )!(*_* %))${COLOR_END}"

# 補完強化
fpath=(path/to/zsh-completions/src $fpath)

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..

case ${OSTYPE} in
    darwin* )
        export CLICOLOR=1
        alias ls='ls -G -h'
        export PATH="$PATH:/usr/local/bin"
        export PATH="$PATH:~/.nodebrew/current/bin"
        ;;
    linux* )
        alias ls='ls -F --color=auto'
        ;;
esac

case ${HOSTNAME} in
    "dental-style" )
        ~/git_clone/screenFetch/screenfetch-dev
        ;;
esac

# gitブランチを表示
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'


# alias
alias ll='ls -FSalh'
alias p3='python3'
alias ..2='cd ../..'
alias ..3='cd ../../..'
export GIT_EDITOR=vim

# 起動時
archey
