#!/bin/bash
set -e

REPO=$1   # pass repo as first argument, e.g., user/repo

# Load secrets
export $(grep -v '^#' repo-secrets.env | xargs)

# Loop through each secret in env file
while read -r line; do
  # Skip empty lines
  [[ -z "$line" ]] && continue
  NAME=$(echo $line | cut -d '=' -f1)
  VALUE=$(echo $line | cut -d '=' -f2-)
  echo "Setting secret $NAME for $REPO"
  gh secret set "$NAME" -b "$VALUE" -R "$REPO"
done < repo-secrets.env