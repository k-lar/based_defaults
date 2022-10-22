#  _    _            ( )          _               _
# | |__| | __ _  _ _  \| ___     | |__  __ _  ___| |_   _ _  __
# | / /| |/ _` || '_|   (_-/     |  _ \/ _` |(_-/|   \ | '_|/ _|
# |_\_\|_|\__/_||_|     /__/     |____/\__/_|/__/|_||_||_|  \__|
#
#
#
# ~/.bashrc
#

# If not running interactively, don't do anything
	[[ $- != *i* ]] && return

# History configuration (unlimited history)
    export HISTFILESIZE=
    export HISTSIZE=
    export HISTTIMEFORMAT="%F %T | "
    export HISTFILE=~/.bash_history
    export PROMPT_COMMAND='history -a'

# Shell options (shopt)
    shopt -s cdspell
    shopt -s histappend
    shopt -s checkwinsize
    stty -ixon # CTRL-s history search

# Prompt shell style
	PS1='[\u@\h \W]\$ '

# Set bash into vim mode
	set -o vi

# Aliases
    alias clear='clear -x' # Don't clear scrollback history (-x)
    alias cd..='cd ..'
    alias ..='cd ..'
    alias ....='cd ../../'
    alias ......='cd ../../../'

# Make grep have color
	alias grep='grep --color=auto'

# System exports
	export EDITOR="/usr/bin/vim"

