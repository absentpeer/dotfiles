#!/bin/bash

ln -sf $HOME/dotfiles/bash/bash_profile $HOME/.bash_profile
ln -sf $HOME/dotfiles/bash/bashrc $HOME/.bashrc

#sh
ln -sf $HOME/dotfiles/ssh/config $HOME/.ssh/config

#git
ln -sf $HOME/dotfiles/git/gitconfig $HOME/.gitconfig

#tmux
ln -sf $HOME/dotfiles/tmux/tmuxconf $HOME/.tmux.conf

#pentadactyl
ln -sf $HOME/dotfiles/pentadactyl/pentarc $HOME/.pentadactylrc
