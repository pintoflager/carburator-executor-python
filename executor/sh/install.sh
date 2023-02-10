#!/usr/bin/env sh

platform="$1"

# App installation tasks on commander node. Runs first
if [ "$platform" = 'commander' ]; then
    carburator print terminal info "Executing install script on $platform"
fi

# App installation tasks on remote worker node.
if [ "$platform" = 'worker' ]; then
    carburator print terminal info "Executing install script on $platform"
fi

# Python needs python
if ! carburator fn integration-installed python3; then
  carburator print terminal error \
    "Missing required program python. Please install it before proceeding."
    exit 120
fi
