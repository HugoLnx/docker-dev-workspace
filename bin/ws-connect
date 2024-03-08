#! /bin/bash
# import file .wsrc if exists
if [ -f .wsrc ]; then
    source .wsrc
fi

# WORKSPACE_NAME = $1 or $WS_WORKSPACE
WORKSPACE_NAME=${1:-$WS_WORKSPACE}

winpty docker exec -it $WORKSPACE_NAME zsh