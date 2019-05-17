# --------
# zprofile 
# --------

# export
export XDG_CONFIG_HOME=$HOME/.config

# enyenv
export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init - zsh)"

# rbenv
#[[ -d ~/.rbenv  ]] && \
#  export PATH=${HOME}/.rbenv/bin:${PATH} && \
#  eval "$(rbenv init -)"

# gem
# export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# fasd
eval "$(fasd --init auto)"

# fzf
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
