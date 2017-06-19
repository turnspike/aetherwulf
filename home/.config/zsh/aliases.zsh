#!/bin/zsh

#-- directories
if [[ "$(uname)" = "Darwin" ]]; then # macos uses a different 'ls'
	export CLICOLOR=1
	export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
	alias l="ls -afh"
	alias ll="ls -afhg"
else
	alias l="ls -ah --color --group-directories-first"
	alias ll="ls -ahl --color --group-directories-first"
fi

alias ..="cd ./.."
alias cdu="cd-gitroot"

#-- system
alias md="mkdir"
alias rd="rmdir"
alias t="trash" # delete files with github.com/andreafrancia/trash-cli
#alias rm='echo "use trash instead, or \rm to bypass"; false'

#-- reload various things, eg to apply config changes w
alias zsh-reload="zplug clean;source ~/.zshrc"
alias zsh-fix="rm ~/.zcompdump && rm ~/.zplug/zcompdump"

#-- zsh "bookmark" plugin commands
alias ba="bookmark" # add bookmark for current directory to list
alias bj="jump" # jump to bookmark x
alias bl="showmarks" # list bookmarked dirs
alias bd="deletemark" # delete bookmark x

#-- temp bookmark commands
alias b='export hdbook=$(pwd)' # bookmark current directory
alias r='cd "$hdbook"' # return to previously bookmarked directory

#-- byobu commands
alias bb="byobu"
alias br="/usr/lib/byobu/include/tmux-detach-all-but-current-client"

#-- coding
alias ct="ctags -R -f ./.git/tags ."

#-- rails commands
alias rsl="rails server -b 0.0.0.0"

#-- apps
alias ag='ag --hidden'
alias e="emacsclient -t -a ''"
#alias e="emacsclient -a '' -c"
alias eb="emacsbare"
alias eg="emacsclient -c -n -a ''" # gui emacs
alias emacsbare="emacs -nw -Q --eval \"(load-theme 'misterioso)\""
alias g="git"
alias hs="homesick"
alias nv="nvim"
alias vim="nvim"
alias oldvim="/usr/bin/vim"
alias vimold="/usr/bin/vim"

# FIXME: the below started throwing a floating point error for no apparent reason.
## make vim follow symlinks into their actual working dir to assist context-sensitive plugins such as fugitive and fireplace
#function vim() {
#  args=()
#  for i in $@; do
#    if [[ -h $i ]]; then
#      args+=`readlink $i`
#    else
#      args+=$i
#    fi
#  done
#
#  nvim -p "${args[@]}"
#}

#-- misc
alias shellname="ps -p $$"
alias bigfiles="du -ah /home | sort -n -r | head -n 15"
