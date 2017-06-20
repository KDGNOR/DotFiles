#! /bin/bash
# Ensure languages are set

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# vim mode Show Normal mode
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg[cyan]%}  Normal-Mode  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

#! /bin/bash
########################################################################
## prompt ##############################################################
########################################################################
autoload -Uz promptinit
autoload -U colors && colors
promptinit
autoload -U compinit
compinit
zstyle ':completion:*' menu select
#setopt completealiases
setopt COMPLETE_ALIASES
PROMPT="%{$fg[cyan]%}+-----------------------------------+
| %{$fg[white]%}%n $ %{$fg[yellow]%}"
RPROMPT="%{$fg[cyan]%}       | %{$reset_color%}                                         "
#RPS1=" %{fg[cyan]%} %T %{$reset_color%}"

#alias Root="sudo -i"
alias Root='sudo zsh ; PROMPT="%{$fg[cyan]%}+-----------------------------------+ | %{$fg[red]%}%n $ %{$fg[yellow]%}""'
##############################
## zsh config file ~/.zshrc ##
##############################

## variables -----------------------------------------------------------
#export BROWSER="w3m"
export BROWSER="open -a 'MultiBrowser'"
export EDITOR="vim"
#export PAGER="most"
#export MANPAGER="vim -"
export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

export MANPAGER='bash -c "vim -MRn -c \"set ft=man nomod nolist nospell nonu\" -c \"nm q :qa!<CR>\" -c \"map <SPACE> <C-D>\" -c \"map b <C-U>\"</dev/tty <(col -b)"'

#export TERM=xterm-256color # fix screen colors - destroy tmux!!!

#DISPLAY=/tmp/launch-jkj4GJ/org.macosforge.xquartz:0

alias -s html=$BROWSER
#export EDITOR="/usr/bin/nano"
########################################################################
## options #############################################################
########################################################################
# misc -----------------------------------------------------------------
# complétion menu
setopt auto_menu
# history --------------------------------------------------------------
# history size
HISTSIZE=100000
SAVEHIST=100000
# history file
HISTFILE=~/.zsh_history
# history without double entry
setopt hist_ignore_all_dups
# update history ?
setopt inc_append_history
#################
# Export Colors #
#################
export RED="\033[31m"
export GREEN="\033[32m"
export YELLOW="\033[33m"
export BLUE="\033[34m"
export PURPLE="\033[35m"
export CYAN="\033[36m"
export GREY="\033[37m"
#################
### function ###
#################
# functions - function                  = .ffnano
if [ -f ~/.home/.zsh_functions ]; then
. ~/.home/.zsh_functions
fi
# functions - function                  = .fnano
if [ -f ~/.home/.bash_functions ]; then
. ~/.home/.bash_functions
fi
#############
### alias ###
#############
# ALIASES -                            =   .alias
if [ -f ~/.home/.term_aliases ]; then
. ~/.home/.term_aliases
fi
# Aliases - QuickSave                  =   .q
if [ -f ~/.home/.quick_aliases ]; then
. ~/.home/.quick_aliases
fi
# Alias for reload
#if [ -f ~/.zsh_aliases ]; then
#. ~/.zsh_aliases
#if
#e
alias R="source $HOME/.zshrc ;echo '\t\t'"

bold=$(tput bold)
normal=$(tput sgr0)


#source /sw/bin/init.sh
# 
#end
export PATH="/bin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/local:/usr/bin:/usr/sbin:/usr/X11/bin:$HOME/.bin:$HOME/.bin/bin:/usr/local/vpnserver"
#export PATH=""
#export PATH="" #MadeByMe
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH # some apps need it
setopt HIST_IGNORE_DUPS

# color text most for -LS-
export CLICOLOR=0
export LSCOLORS=GxFxCxDxBxegedabagaced

# vi insted of emacs
bindkey -v

# bindkeys
# bindkey -s 'ctrl-O' "htop"


# mabye for for HomeBrew Curls erros? mabye for Weechat 1.3 open SSL
#export CURL_CA_BUNDLE=/usr/local/etc/openssl/cert.pem



#if [ "$TERM" = "xterm-color" ]; then
#    echo -en "\e]P0232323" #black
#    echo -en "\e]P82B2B2B" #darkgrey
#    echo -en "\e]P1D75F5F" #darkred
#    echo -en "\e]P9E33636" #red
#    echo -en "\e]P287AF5F" #darkgreen
#    echo -en "\e]PA98E34D" #green
#    echo -en "\e]P3D7AF87" #brown
#    echo -en "\e]PBFFD75F" #yellow
#    echo -en "\e]P48787AF" #darkblue
#    echo -en "\e]PC7373C9" #blue
#    echo -en "\e]P5BD53A5" #darkmagenta
#    echo -en "\e]PDD633B2" #magenta
#    echo -en "\e]P65FAFAF" #darkcyan
#    echo -en "\e]PE44C9C9" #cyan
#    echo -en "\e]P7E5E5E5" #lightgrey
#    echo -en "\e]PFFFFFFF" #white
#    clear #for background artifacting
#fi

# TMUX
#if which tmux >/dev/null 2>&1; then
#    #if not inside a tmux session, and if no session is started, start a new session
#    test -z "$TMUX" && (tmux attach || tmux new-session)
#fi

source /sw/bin/init.sh

################
zsh-HomeScreen # Run function HomeScreen
################


