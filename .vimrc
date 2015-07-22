set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

filetype off					" required for Vundle

"""""""""""""""" VUNDLE """""""""""""""""""
"	:PluginList		- lists configured plugins
"	:PluginInstall	- installs plugins (add ! to update)
"	:PluginSearch <x> searches plugins
"	:PluginClean	- confirms removal of unused plugins
"
" set runtime to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	set laststatus=2
	call vundle#begin()

" Vundle updates Vundle
	Plugin 'gmarik/Vundle.vim'

" Plugins
	Plugin 'bling/vim-airline'
	Plugin 'ervandew/supertab'
	Plugin 'easymotion/vim-easymotion'
	Plugin 'ryanoasis/vim-webdevicons'

call vundle#end()
filetype plugin indent on
""""""""""""" END VUNDLE """"""""""""""""""

let mapleader = ","
let maplocalleader = "\\"

syntax on 

set rnu
set nu
set ruler
set autoindent
set noerrorbells
set colorcolumn=80
set tabstop=4
set bg=dark

colorscheme SolarizedDark 

" Fix backspace indent
set backspace=indent,eol,start

" Quickly edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Reload .vimrc
nnoremap <leader>sv :so $MYVIMRC<cr> :echo ".vimrc refreshed!"<cr>

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Encoding
set bomb
set binary
set ttyfast

" (Ctrl + s)  saves
" inoremap <c-s> <esc>:w<cr> :echom "File saved!"<cr>

nnoremap <leader><space> viw
nnoremap <c-u> viwU<esc>w

" single-quote word
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" double-quote word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" 'jk' escapes INSERT
inoremap jk <esc>
inoremap <esc> <nop>

" Comment out lines for filetypes
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>

" Clean up HTML
" autocmd BufWritePre,BufRead *.html :normal gg=G

" autocommand group
augroup autocommands
autocmd!
" nowrap for HTML
autocmd BufNewFile,BufRead *html setlocal nowrap
autocmd BufNewFile,BufRead *html setlocal colorcolumn=0 

" functional abbrevs
autocmd FileType python	:iabbrev <buffer> iff if:<left>
autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END

" Movement Maps
" (M)p = inside parenthesis
onoremap p i(

" (M)in( = inside next parenthesis
onoremap in( :<c-u>normal! f(vi(<cr>

" (M)il( = inside last parenthesis
onoremap il( :<c-u>normal! F(vi(<cr>

" Typos
iabbrev adn and
iabbrev waht what
iabbrev tehn then
" iabbrev I"m I'm
iabbrev @@ owner@michaeljasonhoward.com
iabbrev ccopy Copyright 2015 Michael Jason Howard, all rights reserved.
iabbrev ssig -- <cr>Michael Jason Howard<cr>owner@michaeljasonhoward.com

" Switch between windows
nmap <silent> <a-up> :wincmd k<cr>
nmap <silent> <a-down> :wincmd j<cr>
nmap <silent> <a-left> :wincmd h<cr>
nmap <silent> <a-right> :wincmd l<cr>

" Airline

" let g:airline_theme = 'serene'
" let g:airline_theme = 'badworlf'
let g:airline_theme = 'behelit'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols_whitespace = ''
