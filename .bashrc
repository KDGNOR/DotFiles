#! /bin/bash
export EDITOR=/usr/bin/nano
export PAGER=/opt/local/bin/most
export OS=10.6.8
# Ensure languages are set
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

clear
# bash3.2 & bash4.0? HomeScreen
#Date31.12.00

#play -n synth 2 pluck C

#### Promt!!
PS1="\033[36m+-----------------------------------+ \n|\033[0m \033[1;31m\u $\033[0m Bash"

#PS1="\033[1;31mSudoMode \u $\033[0m "

#if [ "${USER}" = "root" ]; then
#USER_COL="01;31"; PATH_COL="01;33"
#else
#USER_COL="01;33"; PATH_COL="01;32"
#fi
#HOST_COL="01;37"
#export PS1="\n\[\e[${USER_COL}m\]\u @ \[\e[${HOST_COL}m\]\h > \[\e[${PATH_COL}m\]\w/\[\e[0;38m\]\n-> "
#unset HOST_COL PATH_COL USER_COL
#http://hints.macworld.com/article.php?story=20080312092116264

#PS1="\v pwd:\W \e[0:32m\t\e[m $ " # Give the "Clock Green Texts"

if [ -f ~/.home/.bash_functions ]; then
. ~/.home/.bash_functions
fi

#=# bash_aliases need for alias to work #=#
if [ -f ~/.home/.term_aliases ]; then
. ~/.home/.term_aliases
fi

# ALIASES - alias
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

#################
Bash-HomeScreen # SplashScreen
#################


# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'

##shopt -s autocd

##set completion-ignore-case On

## echo " $USER $HOME  $HOSTNAME " ##

# bind keys to open things

# bind '"\C-O":"htop"'


## fix login zsh for some terminals
 if [ -z "$XTERM" ]; then
   zsh -l          
 fi       
