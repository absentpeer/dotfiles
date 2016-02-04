#!/bin/bash
# bash
ln -sf $HOME/dotfiles/bash/bash_profile $HOME/.bash_profile
ln -sf $HOME/dotfiles/bash/bashrc $HOME/.bashrc
# compton
ln -sf $HOME/dotfiles/compton/compton.conf $HOME/.config/compton.conf
# git
ln -sf $HOME/dotfiles/git/gitconfig $HOME/.gitconfig
# gtk
#ln -sf $HOME/dotfiles/gtk/...
# i3wm
ln -sf $HOME/dotfiles/i3/config $HOME/.i3/config
ln -sf $HOME/dotfiles/i3/i3status.conf $HOME/.i3status.conf
# neovim
#ln -sf $HOME/dotfiles/nvim/...
# pentadactyl
ln -sf $HOME/dotfiles/pentadactyl/pentarc $HOME/.pentadactylrc
# ssh
ln -sf $HOME/dotfiles/ssh/config $HOME/.ssh/config
# tmux
ln -sf $HOME/dotfiles/tmux/tmuxconf $HOME/.tmux.conf
# vim
ln -sf $HOME/dotfiles/vim/vimrc $HOME/.vimrc
# X configuration
ln -sf $HOME/dotfiles/x11/Xresources $HOME/.Xresources
# zathura
ln -sf $HOME/dotfiles/zathura/zathurarc $HOME/.config/zathura/zathurarc
