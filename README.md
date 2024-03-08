# Docker Dev Workspace
## Intro
Simple repository to make easy for me to have a dev linux environment running in my
windows machine.

## Pre-requisites
- git bash
- docker

## What it has installed by default
- Asdf + Direnv
- Node.js
- Python 3
- Ruby
- Lua
- OpenJDK
- cmake
- gcloud
- kubectl

## Setup
* Add your ssh credentials to credentials/ssh/(id_rsa, id_rsa.pub)
* Run `./build.sh`
* Add the scripts at `bin/` to your PATH

## How to use
```
# Enter where you want to start a workspace...
cd /my/super/project/

# Start the container
ws-open <workspace-name>

# Connect to it
ws-connect <workspace-name>

# Stop the container
ws-close <workspace-name>

# Delete the container
ws-rm <workspace-name>
```

## .wsrc
You can create a `.wsrc` file in your project root:
```sh
export WS_WORKSPACE=my-super-project
```

This way you don't neet to pass the `<workspace-name>` is the commands.


## Early Development
I just created this repo for personal use, so it's very opinionated and it might change a lot.
If it interest you, I suggest using it as base.