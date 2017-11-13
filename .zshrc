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
PROMPT="${COLOR_BG}${COLOR_2}[zsh:%n]${COLOR_END}${COLOR_3} %c ${COLOR_1}▷ ${COLOR_END}"
# RPROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}"
RPROMPT="%(?.${COLOR_4}.${COLOR_5})%(?!(^ω ^ )!(*_* %))${COLOR_END}"

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..

case ${OSTYPE} in
	darwin*)
		export CLICOLOR=1
		alias ls='ls -G -h'
		;;
	linux*)
		alias ls='ls -F --color=auto'
		;;
esac

alias p3='python3'
export GIT_EDITOR=vim
