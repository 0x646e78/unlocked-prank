#!/usr/bin/env bash

#finger $USER 
#or env | grep

if [ "$(uname)" == "Darwin" ]; then
  osascript -e "set volume 5"; say -v Whisper "You left me unlocked so I snuck in. powned."; say -v Hysterical "mwa ha ha ha ha ha haaa"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "got off lucky!"
else
  echo "got off lucky!"
fi