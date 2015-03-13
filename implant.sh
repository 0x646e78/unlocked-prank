#!/usr/bin/env bash

#PWN_SHELL=$(finger $USER | awk -F "[/|-]" '{print $NF}')

if [ -e "${HOME}/.bashrc" ]; then
  if [ "$(uname)" == "Darwin" ]; then
    echo 'osascript -e "set volume 5"; say -v Whisper "You left me unlocked so I snuck in. powned."; say -v Hysterical "mwa ha ha ha ha ha haaa"' >> ${HOME}/.profile
    echo 'osascript -e "set volume 5"; say -v Whisper "You left me unlocked so I snuck in. powned."; say -v Hysterical "mwa ha ha ha ha ha haaa"' >> ${HOME}/.bashrc
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    cat >> ${HOME}/.bashrc <<-EOF  
echo -e '\033[0;31m'
echo -e '                           ,     \    /      ,'
echo -e '                          / \    )\__/(     / \'
echo -e '                         /   \  (_\  /_)   /   \'
echo -e '      __________________/_____\__\@  @/___/_____\_________________'
echo -e '      |                          |\../|                          |'
echo -e '      |                           \VV/                           |'
echo -e '      |                                                          |'
echo -e '      |                      HERE BE DRAGONS                     |'
echo -e '      |                  REMEMBER TO LOCK YOUR PC                |'
echo -e '      |                        mwahahahaha                       |'
echo -e '      |                                                          |'
echo -e '      |                                                          |'
echo -e '      |__________________________________________________________|'
echo -e '                    |    /\ /      \\       \ /\    |'
echo -e '                    |  /   V        ))      V   \  |'
echo -e '                    |/             //             \|'
echo -e '                                   V\033[0m'

EOF
  fi
else
  echo "You got off lucky!. Remember to lock your pc."
fi

clear
