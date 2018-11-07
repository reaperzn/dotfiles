#!/usr/bin/env bash

declare -A FILES
FILES=(["vimrc"]=~/.vimrc)
#FILES+=(["bashrc"]=~/.bashrc)

for FILE in ${!FILES[@]}; do
  echo "Setting up dot file for ${FILE}:"
  if [[ -f ${FILES[$FILE]} ]]; then
    echo "${FILES[$FILE]} already exists. Backup and overwrite?"
  else
    echo "${FILES[$FILE]} does not exist: Creating new file"
  fi
done
