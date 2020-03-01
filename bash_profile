
if [ -f ~/.bashrc ]; then
    # always load the rc file
    . ~/.bashrc
fi

if [ -f ~/.profile ]; then
    source ~/.profile
fi

export PATH=~/bin:~/go/bin:$PATH

# Pebble SDK
#if [ -a /Users/thomas/pebble-dev/PebbleSDK-current/bin ] ; then
#    export PATH=/Users/thomas/pebble-dev/PebbleSDK-current/bin:$PATH
#fi


# MacPorts Installer addition on 2017-01-07_at_19:53:34: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/.xsh

export PATH="/Users/thomas/.local/bin:$PATH"

# added by Anaconda3 4.4.0 installer
export PATH="/Users/thomas/anaconda/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
