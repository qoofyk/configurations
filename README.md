# configurations
some useful configuration for vim editor

## configure bash
```shell
ln -s ~/configurations/main.bashrc ~/.bashrc
```


cd $HOME
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv .vimrc .vimrc.backup
ln -s ~/configurations/.vimrc ~/.vimrc
vim


open vim type :
    :PluginInstall


