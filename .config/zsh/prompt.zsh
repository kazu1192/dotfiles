# Color
local DEFAULT=%{$reset_color%}
local RED=%{$fg[red]%}
local GREEN=%{$fg[green]%}
local YELLOW=%{$fg[yellow]%}
local BLUE=%{$fg[blue]%}
local PURPLE=%{$fg[purple]%}
local CYAN=%{$fg[cyan]%}
local WHITE=%{$fg[white]%}

# Git Settings
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{cyan}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%c%u%F{white}(%F{yellow}%b%F{white})%f"
zstyle ':vcs_info:*' actionformats "[%b|%a]"
precmd () { vcs_info }

# PROMPT Settigs
PROMPT="%(?.$DEFAULT.$BLUE)%(?!(*'-') <!(*;-;%) <)$DEFAULT "
PROMPT2="< "
RPROMPT='${vcs_info_msg_0_}'
RPROMPT+="$GREEN"
RPROMPT+=" %25<...<%~/%f"
