set nocompatible              " be iMproved, required
filetype off                  " required

"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.

" auto completion
Plugin 'Valloric/YouCompleteMe'

" fugitive is a tool for Git and Github
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

Plugin 'a.vim'

" plugin
Plugin 'taglist.vim'

" command-t is for fast file lookup, type \t to trigger
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" spark up is a html-helping script
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

""
Plugin 'majutsushi/tagbar'

" theme related
Plugin 'altercation/vim-colors-solarized'

" minibuf 
" use :b 1 :b2 to switch between buff
Plugin 'fholgado/minibufexpl.vim'

" nerdtree 
" for IDE-like file navigation
Plugin 'scrooloose/nerdtree'

"vimoutliner for note taking
Plugin 'vimoutliner/vimoutliner'
" default is set into ',,'
" :help votl_cheatsheet for quick check


" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" For Taglist"
" use ctags -R to generate tags
" F9 will trigger taglist
"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"use F9 to open taglist only
map <silent> <F9> :TlistToggle<cr>


" add the tagbar support
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" use Grep to search string
" grep -nR "something"

syntax on
" set background=dark
" colorscheme solarized

set cursorline
set tabstop=4
"
""always uses spaces instead of tab characters
set expandtab
" size of an "indent"
set shiftwidth=4

""set hi Search cterm=NONE ctermfg=white ctermbg=blue
hi Search ctermfg=grey ctermbg=black

augroup resCur
	autocmd!
        autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END




