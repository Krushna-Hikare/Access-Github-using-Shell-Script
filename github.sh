#!/bin/bash
#
#Do the below steps in cli before executing the script.
#export Username= username
#export Token= token
#
#
Username=$Username
Access_Token=$Token

#provide the repo name as argument to the file
repository=$1

#API we are gonna use:
#curl -s -u username:token https://api.github.com/repos/OWNER/REPO
#
function curlcmd(){
        curl -s -u "${Username}:${Access_Token}" "https://api.github.com/repos/${Username}/${repository}" | jq -r ".owner.login"
}

if [ -z "$1" ]; then
        echo "The input doesn't have repo name"
        echo "Try ./github.sh reponame"

else
        curlcmd
fi
