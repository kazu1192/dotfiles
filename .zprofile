# --------
# zprofile 
# --------

# export
export XDG_CONFIG_HOME=$HOME/.config

# enyenv
export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init - --no-rehash)"

# rbenv
#[[ -d ~/.rbenv  ]] && \
#  export PATH=${HOME}/.rbenv/bin:${PATH} && \
#  eval "$(rbenv init -)"

# gem
#export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# fzf
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# startx
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
