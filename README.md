# configurations
some useful configuration for bash and vim editor
written by Feng Li, li2251@purdue.edu

## configure bash
add this line to the end of your .bashrc
```shell
source ~/configurations/main.bashrc
```
then source your .bashrc
```shell
source .bashrc
```

## configure vim
```shell
cd $HOME
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv .vimrc .vimrc.backup
ln -s ~/configurations/vim/vimrc ~/.vimrc
vim
```


open vim type :
    :PluginInstall


