#!/bin/bash

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
BLACK="\[\033[0;30M\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
CLEAR="\[$(tput sgr0)\]"

GIT_PS1_SHOWDIRTYSTATE=true

export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

PROMPT_COMMAND='echo -ne "\033]0;${USER}: ${PWD}\007"'

# export PROMPT_COMMAND='echo -ne "\033]0;${USER}:$(
#     if [[ $(__git_ps1) =~ \*\)$ ]]
#     # a file has been modified but not added
#     then echo "'$YELLOW'"$(__git_ps1 " (%s)")
#     elif [[ $(__git_ps1) =~ \+\)$ ]]
#     # a file has been added, but not commited
#     then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
#     # the state is clean, changes are commited
#     else echo "'$CYAN'"$(__git_ps1 " (%s)")
#     fi) ${PWD}\007"'

export PS1=${MAGENTA}"//"${CLEAR}"> "

alias ll='ls -lah'
alias gss='git status -s'