# Git Settings
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{cyan}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%c%u%F{white}(%F{yellow}%b%F{white})%f"
zstyle ':vcs_info:*' actionformats "[%b|%a]"
precmd () { vcs_info }
