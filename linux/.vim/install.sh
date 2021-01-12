#!/bin/bash

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing plugins"
vim +PluginInstall +qall

# echo "Building Command-T extension"
# pushd bundle/command-t/ruby/command-t/
# ruby extconf.rb
# make
# popd
