#!/bin/bash
set -e

# If you have any initialization commands, add them here
# For example, you might want to set up the Rust toolchain
if command -v rustup &> /dev/null; then
    rustup default stable
fi

# Execute the command passed to the container
exec "$@"
