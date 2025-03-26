#!/bin/bash


if ! command -v git &> /dev/null; then
  echo "Error: Git is not installed or not found in PATH."
  exit 1
fi


if [ -z "$1" ]; then
  echo "Usage: $0 <commit-message>"
  exit 1
fi

git add --all
git commit -m "$1"
git push
