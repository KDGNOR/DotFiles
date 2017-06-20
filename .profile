#if [ -e /usr/share/terminfo/x/xterm-256color ]; then
#        export TERM='xterm-256color'
#else
#        export TERM='xterm-color'
#fi

# app name : Aewan (Editor for Ascii-Art)

####################################
## Config For Bash $Home/.Profile ##
##          By: KDGNOR            ##
####################################
# touch file{1..10} give 10 files!!
#######################################
##   Check .bash_aliases ".alias"    ##
#######################################

#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#
#-# Promt+HomeScreen Check: .bash_login #
#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#

# vim extra rc are: .vimrc2

###########################################
###            Term Colors              ###
###                                     ### 
###         For: PS1= echo -e           ###
###                                     ###
###         .Nano = Profile2            ###
###                                     ###
###########################################
# /Users/kdg/.profile2 for more info,edit : do : .Nano
# End of The .profile Script for bin/bash -l.
. ~/.bashrc

#To use bash_completion, add the following lines at the end of your
#.bash_profile:
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
      . /opt/local/etc/profile.d/bash_completion.sh
  fi

####################################
#1#Exports-ExportsVariable-Exports1#
####################################
export PATH="opt/local/bin:/opt/local/sbin:/bin:/usr/local/bin:/usr/local/sbin:/usr/local:/usr/bin:/bin:$HOME/.bin:$PATH:$HOME/.local/bin"
export EDITOR=' subl -w '
# has Dubbel with Macports Texts for be safe
# MacPorts Installer addition on 2012-06-30_at_12:35:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export EDITOR=/usr/bin/pico
# Finished adapting your PATH environment variable for use with MacPorts.
## for GitHub
[ -f ~/.git-bash-completion.sh ] && . ~/.git-bash-completion.sh

# enable bash_aliases by uncomed the next 3 lines GU 12/1/2008
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

#export LANG=no_NO.UTF-8
# Ensure languages are set
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

##################################################################





