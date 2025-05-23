
# zsh settings
HISTCONTROL=ignoredups:ignorespace

# Customise Geometry Theme
GEOMETRY_PROMPT=(geometry_newline geometry_echo geometry_status geometry_path)
GEOMETRY_RPROMPT=(geometry_git)
GEOMETRY_STATUS_SYMBOL="▲"
GEOMETRY_STATUS_SYMBOL_ERROR="△"
GEOMETRY_PATH_COLOR="cyan"

GEOMETRY_GIT_SYMBOL_DIRTY="✘"
GEOMETRY_GIT_SYMBOL_CLEAN="✔"

# Use `zplug` for plugins
# https://github.com/zplug/zplug

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "geometry-zsh/geometry", at:main # theme
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

## Aliases

alias ls='ls --color'
 # l for longform ls
 alias l='ls -lA'

 # vi for neovim
 alias vi=nvim

 # cd dots
 alias -g ...="../.."
 alias -g ....="../../.."


## Environment Variables

export EDITOR="nvim"

## Other
eval "$(fnm env --use-on-cd)"

# PATH
# export PATH="$(yarn global bin):$PATH"
export PATH=$HOME/go/bin:$PATH

if type mise &>/dev/null; then
  eval "$(mise activate zsh)"
fi
