#!/usr/bin/env bash

declare -A FILES
FILES=(["vimrc"]=~/.vimrc)
# Example of how to add a new dot file.
#FILES+=(["FILENAME"]=FILEPATH_NOQUOTES)

for FILE in ${!FILES[@]}; do
  echo "Setting up dot file for ${FILE}:"
  if [[ -f ${FILES[$FILE]} ]]; then
    echo "${FILES[$FILE]} already exists. Backup and overwrite?"
    echo "Backup created on $(date)" >> ${FILES[$FILE]}
    mv ${FILES[$FILE]} ${FILES[$FILE]}.old
    wget https://raw.githubusercontent.com/reaperzn/dotfiles/master/${FILE} -O ${FILES[$FILE]}
  else
    echo "${FILES[$FILE]} does not exist: Creating new file"
    wget https://raw.githubusercontent.com/reaperzn/dotfiles/master/${FILE} -O ${FILES[$FILE]}
  fi
done
