#!/usr/bin/env bash

#PWN_SHELL=$(finger $USER | awk -F "[/|-]" '{print $NF}')

if [ "$(uname)" == "Darwin" ]; then
  echo 'osascript -e "set volume 5"; say -v Whisper "You left me unlocked so I snuck in. powned."; say -v Hysterical "mwa ha ha ha ha ha haaa"' >> ${HOME}/.profile
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  if [ -e "${HOME}/.bashrc" ]; then
    echo 'echo "Lock your pc!"' >> ${HOME}/.bashrc
  fi
else
  echo "You got off lucky!. Remember to lock your pc."
fi
