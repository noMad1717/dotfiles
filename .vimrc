
set nocompatible	"be iMproved, required
filetype off		"required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Execute git-commands inside of Vim
Plugin 'tpope/vim-fugitive'
" Fuzzy file navigation
Plugin 'wincent/command-t'
" Status/tabline for Vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()		"required
filetype plugin indent on	"required

" Brief help
" :PluginList		    - lists configured plugins
" :PluginInstall	    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo 	- searches for foo; append `!` to refresh local cache
" :PluginClean		    - confirms removal of unused plugins; append `!` to auto-approve removal

" Enable the list of buffers with the airline plugin
let g:airline#extensions#tabline#enabled = 1
" Show just the filename in the 'tab'
let g:airline#extensions#tabline#fnamemod = ':t'
" Set the default theme for airline
let g:airline_theme = 'afterglow'

" Map ',' as <leader>
let mapleader = ','

" Open a new empty buffer
nmap <leader>T :enew<CR>
" Move to the next buffer
nmap <leader>l :bn<CR>
" Move to the previous buffer
nmap <leader>h :bp<CR>
" Close the current buffer and save
nmap <leader>bq :w <BAR> bd<CR>
" Close the current buffer without saving
nmap <leader>qq :bd<CR>

" Toggle relativenumber on/off
nmap <leader>tn :set relativenumber!<CR>
" Toggle hlsearch on/off
nmap <leader>hl :set hlsearch!<CR>

set hidden          " Ignore unsaved buffers

set relativenumber
set number

syntax on

set visualbell      " Disable beeping noise

set encoding=utf-8

set laststatus=2    " Needed to show the statusbar provided by vim-airline

set showmode        " Show current mode
set showcmd         " Show last executed command

set hlsearch        " Highlight matches
set incsearch       " Use incremental search
set ignorecase      " Search is not case-sensitive

colorscheme afterglow

set tabstop=4		" Show existing tab as 4 spaces
set shiftwidth=4	" Indenting with '>' equals to 4 spaces
set expandtab		" Pressing tab creates 4 spaces

" Insert closing curly bracket two rows below, indent and enter 'insert' mode
autocmd FileType java inoremap {<Enter> {<Space><Enter><Enter>}<Esc>ki<Tab> 

" Insert closing tag of whatever tag that was just opened
autocmd FileType xml inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O

