# Installation instructions

## 1. Clone dotvim into .vim directory
git clone https://github.com/foxkill/dotvim.git .vim

## 2. Change into the home directory
cd ~
rm .vimrc .vimrc.local

## 3. Create links .vimrc and .vimrc.local

ln -s .vim/vimrc.local .vimrc.local 
ln -s .vim/vimrc .vimrc 
