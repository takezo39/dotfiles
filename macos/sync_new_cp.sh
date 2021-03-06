#!/bin/bash

# ls -a in your home directory and check for anything else to exclude

# -e "ssh -c aes256-cbc" lower security cypher only on trusted network 
# -n dry-run

rsync -avHEP -e "ssh -c aes256-ctr" \
    --exclude='.dotfiles/*' \
    --exclude='Library/*' \
    --exclude='.pyenv/*' \
    --exclude='.oh-my-zsh' \
    --exclude='.oh-my-zsh/*' \
    --exclude='*.swp' \
    --exclude='.vim' \  # important, else .dotfiles/vim/install.sh won't reinstall
    --exclude='.Trash/*' \
    --exclude='Downloads/*' \
    --exclude='temp/*' \
    ~/ USER@NEWCP:~/
