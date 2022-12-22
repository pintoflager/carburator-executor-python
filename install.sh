#!/usr/bin/env bash

# Python needs python
err="Missing required program python. Please install it before proceeding."

# If remotes don't have carburator installed we can't use it's methods.
if ! which caburator &> /dev/null; then
  if ! which python3 &> /dev/null; then
    echo "$err" && exit 120
  fi
  
  exit 100
fi

if ! carburator fn integration-installed python3; then
  carburator print terminal error "$err" && exit 120
fi
