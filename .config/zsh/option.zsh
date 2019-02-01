# Options
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=100000
SAVEHIST=100000

setopt auto_menu
setopt auto_pushd
setopt correct
setopt extended_glob
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt menu_complete
setopt print_eight_bit
setopt prompt_subst
setopt pushd_ignore_dups
setopt share_history

autoload -Uz colors; colors
autoload -Uz select-word-style; select-word-style default
autoload -Uz compinit; compinit -u
autoload -Uz vcs_info

zstyle ':zle:*' word-chars " ,/|=;:@{}"
zstyle ':zle:*' word-chars unspecified
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parents qwd ..
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
	/usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

zmodload -i zsh/complist
