set rnu
set scrolloff=10

call plug#begin('~/.vim/plugged')
	Plug 'sirver/ultisnips'
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdcommenter'
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'https://github.com/adelarsq/vim-matchit'
	
call plug#end()

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"

set rnu


let g:snipMate = { 'snippet_version' : 1 }


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'davidhalter/jedi-vim'
	Plugin 'jiangmiao/auto-pairs'
		
call vundle#end()            
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle

let mapleader=","
set timeout timeoutlen=1500

colorscheme gruvbox
set bg=dark
set foldmethod=indent
set foldlevel=0
"set tabstop=4
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-c> :w<CR>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

autocmd FileType python map <buffer> <C-b>  :w<CR>:exec  '!clear; python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-b> <esc>:w<CR>:exec '!clear; python3' shellescape(@%, 1)<CR>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'


