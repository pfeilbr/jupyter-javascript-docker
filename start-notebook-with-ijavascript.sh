#!/bin/bash

set -e

# TODO: should not need to do this. jupyter should use ~/.bashrc
# which includes this
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

exec /usr/local/bin/start-notebook.sh "$@"