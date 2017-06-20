#! /bin/sh
mkdir ~/bash-backup
mv ~/.profile ~/.bashrc ~/bash-backup
cd ,All-DotFiles
mv .profile .bashrc .bash_aliases .term_aliases bash_functions ~
mv .ubuntu1204 .apt_aliases .quick_aliases ~
