#!/bin/sh


vim_folder=~/.vim

echo 'Copy .vimrc to ~/.vimrc'
cp .vimrc ~/.vimrc

echo 'Copy .gvimrc to ~/.gvimrc'
cp .gvimrc ~/.gvimrc

if [ ! -d $vim_folder ]
then
	mkdir -p ~/.vim
fi

echo 'Copy selected color and themes'
cp -r colors/ ~/.vim/colors

echo 'Copy settings for plugins'
cp -r plugin/ ~/.vim/plugin

echo 'Install Vundle'
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo 'Please launch vim and manually run :BundleInstall'