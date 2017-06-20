#! /bin/bash
####################################
## "Bash-Functions"               ##
####################################

function root {
        cd /usr/local/bin
        echo -e "\033[1;31m  root\033[0m (BashRoot)"
        pwd
        sudo -s
}

function up {
	uptime | grep -ohe '[0-9.*] days[s,]'
}

cl() {
if [ -d "$1" ]; then
        cd "$1"
        ls
        else
        echo "bash: cl: '$1': Directory not found"
fi
}

# echo Hello
function hello {
figlet Hello :D
}

function mkcd(){
    mkdir $1;
    cd $1;
}


# Windows.7 # "alias"="cd /volumes/C/Users/kdg/Desktop"
function wd {
cd /volumes/C/Users/kdg/Desktop
}

function Bash-HomeScreen {
        cd $HOME/.Desktop
        echo -e "\033[37m"
        clear
        date "+_____%d/%m/%Y_____"
        pwd
        cal.2,1
        oldi
        echo -e "\033[37m|\033[36m" MacOS $OS on MacPro "\033[37m           
|"
        echo -e "\033[37m+-----------------------------------+ \033[0m "
}

weather(){ curl -s "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query=${@:-<YOURZIPORLOCATION>}"|perl -ne '/<title>([^<]+)/&&printf "%s: ",$1;/<fcttext>([^<]+)/&&print $1,"\n"';}

#pushd and popd
p()	{
	if [ -z $1 ] ; then
	    popd
	else
	    pushd $1
	fi
	}

#download to ~/Downloads
cget() {
	pushd ~/Downloads && wget $1 && popd
	}

#BC() {
#	bc <<< "addition;$var1/$var2"
#	#answer=$(bc <<< "scale=2;$var1/$var2")
#	}
