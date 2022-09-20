#!/bin/bash

# ******************************************************************************
# A simple script to facilitate the syncing of a remote folder with remote
# By thomas.cherry@gmail.com

account=$USER # remote user account
server=public_share_ssh_host # remote ssh host
local_path=$HOME/Public # local folder to sync
remote_path=/home/$account/Shared # remote folder to sync

auto_mode=1 # 1 if default sync operation is to take place, 0 otherwise

# remote -> local
function remote_to_local {
	rsync -e "/usr/bin/ssh"  \
		--bwlimit=2000 \
		--archive \
		--update \
		${account}@${server}:${remote_path}/ \
		${local_path}
}

# local -> remote
function local_to_remote {
	rsync -e "/usr/bin/ssh" \
		--bwlimit=2000 \
		--archive \
		--update \
		${local_path}/ \
		${account}@${server}:${remote_path}
}

# print out usage information
function usage
{
    echo "Usage:"
    echo "   # default, since both ways"
    echo "  " $(basename "$0")
    echo
    echo "   # manually call for both syncs"
    echo "  " $(basename "$0") "-l -r"
    echo
    echo "   # override everything and sinc both ways"
    echo "  " $(basename "$0") "-A <name> -H <host> -R <path> -S <path> -l -r"
    echo

    format="%4s %-7s : %-30s - %s\n"
    printf "${format}" "Flag" "Options" "Description" "Value"
    printf "${format}" "----" "-------" "---------------------------" "--------"
    printf "${format}" "-A" "<name>" "set remote user name" $account
    printf "${format}" "-H" "<host>" "set server name" $server
    printf "${format}" "-l" "" "sync local to remote"
    printf "${format}" "-r" "" "sync remote to local"
    printf "${format}" "-R" "<path>" "set remote source directory" $remote_path
    printf "${format}" "-S" "<path>" "set local source directory" $local_path

    exit 1
}

################################################################################

#if [ $# -eq 0 ]; then
#	echo "No arguments provided"
#	exit 1
#fi

while getopts A:H:S:R:hrl opt ; do
    case "${opt}" in   
        A) account=${OPTARG} ; remote_path=/home/$account/Shared ;;
        H) server=${OPTARG} ;;
        S) local_path=${OPTARG} ;;
        R) remote_path=${OPTARG} ;;
        
        r) remote_to_local ; auto_mode=0 ;;
        l) local_to_remote ; auto_mode=0 ;;
        
        *) usage ;;
    esac
done

# if no explicit action was given, then do the default action
if [ ${auto_mode} -eq 1 ] ; then
    remote_to_local
    local_to_remote
fi
