#!/bin/bash

TARGET_DIR="$HOME/bin"

if [[ -e $TARGET_DIR ]]; then
  [[ -d $TARGET_DIR ]] || (echo "TARGET_DIR needs to be a directory"; exit 1)
else
  mkdir -- $TARGET_DIR || (echo "Failed to create $TARGET_DIR"; exit 1)
fi

chmod +x sof
cp -v -- scream.mp3 $TARGET_DIR/scream.mp3 || (echo "Failed to copy scream.mp3"; exit 1)
(sed 's%{{DIRECTORY}}%$HOME/bin%' sof > $TARGET_DIR/sof) || (echo "Failed to copy sof"; exit 1)
