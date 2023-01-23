#!/usr/bin/env bash

# Python needs python
if ! carburator fn integration-installed python3; then
  carburator print terminal error \
    "Missing required program python. Please install it before proceeding."
    exit 110
fi
