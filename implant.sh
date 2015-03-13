#!/usr/bin/env sh

PWN_SHELL=$(echo $0 | awk -F "[/|-]" '{print $NF}')

if [ "$(uname)" == "Darwin" ]; then
  echo 'osascript -e "set volume 5"; say -v Whisper "You left me unlocked so I snuck in. powned."; say -v Hysterical "mwa ha ha ha ha ha haaa"' >> ${HOME}/.${PWN_SHELL}rc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo 'echo "Got off lucky!"' >> ${HOME}/.${PWN_SHELL}rc
else
  echo "You got off lucky!. Remember to lock your pc."
fi
