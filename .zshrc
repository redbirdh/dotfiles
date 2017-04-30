export LANG=ja_JP.UTF-8

autoload -Uz colors
colors

PROMPT="%{${fg[green]}%}[zsh] %~ $ %{${reset_color}%}"

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..

setopt print_eight_bit
setopt auto_cd

case ${OSTYPE} in
	darwin*)
		export CLICOLOR=1
		alias ls='ls -G -h'
		;;
	linux*)
		alias ls='ls -F --color=auto'
		;;
esac

