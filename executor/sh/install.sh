#!/usr/bin/env sh

# Python needs python
if ! carburator fn integration-installed python3; then
  carburator print terminal error \
    "Missing required program python. Please install it before proceeding."
    exit 120
fi
