# I Installation instructions

## II Creation of repository

mkdir .vim
cd .vim

git init
git add .
git commit -m 'Initial commit'

## III Create Empty Github repository on their websiten

## IV Push the repository to github

git remote add origin https://github.com/foxkill/dotvim.git
git push orgin master

## 1. Install a plugin

git submodule add [url of plugin] bundle/[vim-pluginname]
git commit -m 'added [pluginname]'
git push


## 2. Clone dotvim into .vim directory
git clone https://github.com/foxkill/dotvim.git .vim

## 3. Change into the home directory
cd ~
rm .vimrc .vimrc.local

## 4. Create links .vimrc and .vimrc.local

ln -s .vim/vimrc.local .vimrc.local 
ln -s .vim/vimrc .vimrc 

## 5. Install git versioned plugins

cd .vim
git submodule init
git submodule update

## 6. Update all plugins

git submodule foreach git pull origin master
