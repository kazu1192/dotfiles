# Color
local DEFAULT=%{$reset_color%}
local RED=%{$fg[red]%}
local GREEN=%{$fg[green]%}
local YELLOW=%{$fg[yellow]%}
local BLUE=%{$fg[blue]%}
local PURPLE=%{$fg[purple]%}
local CYAN=%{$fg[cyan]%}
local WHITE=%{$fg[white]%}

# PROMPT Settigs
PROMPT="%(?.$DEFAULT.$BLUE)%(?!(*'-') <!(*;-;%) <)$DEFAULT "
PROMPT2="< "
RPROMPT='${vcs_info_msg_0_}'
RPROMPT+="$GREEN"
RPROMPT+=" %25<...<%~/%f"
