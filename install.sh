#!/bin/bash
set -eu

DOT_DIRECTORY="$HOME/.dotfiles"
REMOTE_URL="https://github.com/kazu1192/dotfiles"

dot_install() {
  [ -d $DOT_DIRECTORY ]  && exit 0

  echo "Downloading dotfiles..."
  mkdir -p $DOT_DIRECTORY
  git clone --recursive $REMOTE_URL $DOT_DIRECTORY

}

init() {
  # Todo
  echo ""
}

link() {
  for f in .??*
  do
    [ -n "$OVERWRITE" -a -e $HOME/$f ] && rm -f $HOME/$f
    # If you have ignore files, add file/directory here
    [[ $f = ".git" ]] && continue
    [[ $f = ".gitignore" ]] && continue
    ln -snfv $DOT_DIRECTORY/$f $HOME/$f
  done

  echo $(tput setaf 2)Deploy dotfiles complete. ✔︎$(tput sgr0)
}

exit 0
