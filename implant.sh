#!/usr/bin/env sh

PWN_SHELL=$(echo $0 | awk -F "[/|-]" '{print $NF}')

if [ "$(uname)" == "Darwin" ]; then
  echo 'osascript -e "set volume 5"; say -v Whisper "You left me unlocked so I snuck in. powned."; say -v Hysterical "mwa ha ha ha ha ha haaa"'
  echo $PWN_SHELL
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "got off lucky!"
  echo $PWN_SHELL
else
  echo "You got off lucky!. Remember to lock your pc."
  echo $PWN_SHELL
fi
