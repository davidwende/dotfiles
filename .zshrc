# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias ll="ls -l --color=auto"
alias n="nvim"

eval "$(zoxide init zsh)"
PATH=$PATH:/opt/intelFPGA_pro/23.4/quartus/bin
PATH=$PATH:/opt/intelFPGA_pro/23.4/quartus/linux64
PATH=$PATH:/opt/intelFPGA_pro/23.4/questa_fse/bin
PATH=$PATH:/opt/intelFPGA_pro/23.4/qsys/bin
QSYS_ROOTDIR="/opt/intelFPGA_pro/23.4/qsys/bin"

export LM_LICENSE_FILE="/home/dwende/license/combined_license_20250603.dat"
# export LM_LICENSE_FILE="/home/dwende/license/combined_license.dat"
# export LM_LICENSE_FILE="/home/dwende/license/LR-164889_License.dat"

export QSYS_ROOTDIR="/opt/intelFPGA_standard/24.1std/quartus/sopc_builder/bin"
