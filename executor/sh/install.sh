#!/usr/bin/env sh

role="$1"

# App installation tasks on a local client node. Runs first
if [ "$role" = 'client' ]; then
    carburator print terminal info "Executing install script on $role"
fi

# App installation tasks on remote worker node.
if [ "$role" = 'worker' ]; then
    carburator print terminal info "Executing install script on $role"
fi

# App installation tasks on remote commander node.
if [ "$role" = 'commander' ]; then
    carburator print terminal info "Executing install script on $role"
fi

# Python needs python
if ! carburator has program python3; then
  carburator print terminal error \
    "Missing required program python. Please install it before proceeding."
    exit 120
fi
