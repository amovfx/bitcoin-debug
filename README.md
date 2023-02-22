### Bitcoin Debug

This repo is setup to help debug Bitcoin Core. It has a submodule of the Bitcoin Core repo.

buildBitcoin.sh will build Bitcoin Core and run the tests. It will also run the tests in the Bitcoin Core repo.
docker-compose is what you run.

Vscode_launch.json has a launch configuration for debugging Bitcoin Core.

##Dependencies

Docker
You are going to want the remote container extensions for vscode.

## Setup

Build docker file

```docker build . -t=bitcoin-debug:latest```

## Run

```docker-compose up```

## Debug

Attach vscode to the container and you are off to the races.
You will most likely have to install your extensions in the container.
The debug configurations should be present.