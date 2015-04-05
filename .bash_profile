
if [ -f ~/.bashrc ]; then
    # always load the rc file
    . ~/.bashrc
fi

if [ -f ~/.profile ]; then
    source ~/.profile
fi

export PATH=~/bin:$PATH

# Pebble SDK
if [ -a /Users/thomas/pebble-dev/PebbleSDK-current/bin ] ; then
    export PATH=/Users/thomas/pebble-dev/PebbleSDK-current/bin:$PATH
fi

# MacPorts Installer addition on 2014-11-16_at_16:44:20: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

