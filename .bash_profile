echo Loading bash profile...
#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

alias ls='ls -G'		#ls with color
alias la='ls -a'		#ls all
alias ll='ls -lh'		#ls list with size units
alias lsd='ls -d */'            #ls directories

alias le='ll -e'		#ls list with acl info
alias lt='ll -t'		#ls long sorted by time

alias lls='ll | sort -k $1'		#sort by text colume
alias llsn='ls -l | sort -n -k $1'	#sort by number colume

alias cdf='cd `osascript -e "tell application \"Finder\" to if window 1 exists then if target of window 1 as string is not \":\" then get POSIX path of (target of window 1 as alias)"`'

#alias svn='echo Running svn as tcherry;svn --username tcherry'
export SVN_EDITOR=vi
#export GREP_COLOR=always

PATH=$PATH:/usr/server/mddevel/GCMD/packages/mysql/versions/current/bin/
PATH=$PATH:/usr/server/mddevel/GCMD/packages/apache-ant/versions/current/bin/
PATH=$PATH:/Users/tacherr1/Library/Unix/bin
PATH=$PATH:$HOME/bin 
export PATH

export JRE_HOME=/Library/Java/JavaVirtualMachines/current/Contents/Home/
TOMCAT_HOME=/usr/server/mddevel/tomcat
export TOMCAT_HOME

MANPATH="$MANPATH:/Users/tacherry1/Library/Unix"
export MANPATH

export MD=/usr/server/mddevel/GCMD/
alias md9='cd ${MD}/MDServer/'

export GREP_OPTIONS="--color --exclude=*\.svn*"

EDITOR=/usr/bin/vi
export EDITOR


function tabname
{
    printf "\e]1;$1\a"
}

function winname
{
    printf "\e]2;$1\a"
}

#
function cdl
{
	cd $1
	ls
}

mainPs1='\
\[\033[35m\]\!:\#:\j\
\[\033[0m\]-\
\[\033[31m\]\u@\h\
\[\033[0m\]\
\$>'
PS2='> '
#PS3=ps3
#PS4='+ '

altPs1='\
\[\033[35m\]pwd\[\033[0m\]= \[\033[34m\]\w\[\033[0m\]\n\
\[\033[35m\]\!\
\[\033[0m\]:\
\[\033[35m\]\#\
\[\033[0m\]:\
\[\033[35m\]\j\
\[\033[0m\]-\
\[\033[31m\]\u@\h\
\[\033[0m\]\
\$>'

function alt
{
	PS1=$altPs1
	echo "history#:command#:#jobs-user@computer[$|#]>"
}
function ps1
{
	PS1=$mainPs1
	#echo "Prompt:nhistory#:command#:#jobs-user@computer[$|#]"
}

function prom1
{
	case @TERM in
		xterm*)
			local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        	;;
    	*)
        	local TITLEBAR=''
        	;;
	esac
	
	PS1="${TITLEBAR}\
\[\$(date +%H%M)\]\
\[\u@\h:\w\]\	
\$ "
}

ps1

test -r /sw/bin/init.sh && . /sw/bin/init.sh

##
# Your previous /Users/tacherr1/.bash_profile file was backed up as /Users/tacherr1/.bash_profile.macports-saved_2013-05-31_at_16:04:51
##

# MacPorts Installer addition on 2013-05-31_at_16:04:51: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

