#! /bin/bash
# import file .wsrc if exists
if [ -f .wsrc ]; then
    source .wsrc
fi

# WORKSPACE_NAME = $1 or $WS_WORKSPACE
WORKSPACE_NAME=${1:-$WS_WORKSPACE}

if [ -z $WORKSPACE_NAME ]; then
    echo "ERROR: Please provide a workspace name"
    echo "Usage: ws-open.sh <workspace-name>"
    exit 1
fi

docker ps -a | grep $WORKSPACE_NAME > /dev/null
if [ $? -eq 0 ]; then
    docker start $WORKSPACE_NAME
else
    winpty docker run --name $WORKSPACE_NAME -d -v /$PWD/:/root/workspace/ dev
fi

# if no errors
if [ $? -eq 0 ]; then
    echo "Workspace $WORKSPACE_NAME was opened"
else
    echo "ERROR: Could not open workspace $WORKSPACE_NAME"
    exit 1
fi