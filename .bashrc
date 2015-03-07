echo Loading bashrc...

#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

alias ls='ls -G'                    #ls with color
alias la='ls -a'                    #ls all
alias ll='ls -lh'                   #ls list with size units
alias lsd='ls -d */'                #ls directories

alias le='ll -e'                    #ls list with acl info
alias lt='ll -t'                    #ls long sorted by time

alias lls='ll | sort -k $1'         #sort by text colume
alias llsn='ls -l | sort -n -k $1'  #sort by number colume

alias cdf='cd `osascript -e "tell application \"Finder\" to if window 1 exists then if target of window 1 as string is not \":\" then get POSIX path of (target of window 1 as alias)"`'

export SVN_EDITOR=vim
#export GREP_COLOR=always
export GREP_OPTIONS="--color --exclude=*\.svn*"

EDITOR=/usr/bin/vim
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

# MacPorts Installer addition on 2013-05-31_at_16:04:51: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

