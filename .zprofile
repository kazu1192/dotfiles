# --------
# zprofile 
# --------

# export
export XDG_CONFIG_HOME=$HOME/.config

# enyenv
export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init - zsh)"

# fasd
eval "$(fasd --init auto)"

# fzf
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
