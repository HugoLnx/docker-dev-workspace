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

docker ps | grep $WORKSPACE_NAME > /dev/null
if [ $? -eq 0 ]; then
    docker stop $WORKSPACE_NAME
    echo "Workspace $WORKSPACE_NAME was closed"
else
    echo "Workspace $WORKSPACE_NAME is not running"
fi