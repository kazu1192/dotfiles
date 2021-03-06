# ------------------------------
# config.fish
# ------------------------------

# alias settings
abbr c "cd"
abbr mk "mkdir -p"
abbr cl "clear"
abbr vi "vim"
# abbr vim "nvim"
abbr g "git"
abbr pacman "sudo pacman"
abbr rs "rsync -ahv --progress"

# docker alias
abbr do "sudo docker"
abbr dono "sudo docker run --rm -it --user node -v PWD:/app node_dev"
abbr doc "sudo docker-compose"
abbr docr "sudo docker-compose run --rm --service-ports"

alias ide "~/.bin/ide.sh"

# fzf settings
set -U FZF_LEGACY_KEYBINDINGS 0
set -U npm_config_prefix $HOME/.npm

# PATH
set -U fish_user_paths /usr/local/bin $fish_user_paths
set -U fish_user_paths $HOME/.npm/bin $fish_user_paths
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set -U fish_user_paths $HOME/.bin $fish_user_paths

# go
set -x GOPATH $HOME
set -x PATH $GOPATH/bin $PATH

# n
set -x N_PREFIX $HOME/.n
set -U fish_user_paths $N_PREFIX/bin $fish_user_paths
