syntax on " Basic highlighting

set noerrorbells " Get rid of error sound effcts
set tabstop=4 softtabstop=4 " Set the width of tabs
set shiftwidth=4 " Set the amount of arrow key + over
set expandtab " Tabs to spaces
set smartindent " Do best autoindent
set nu " Numbered lines
set nowrap " Do not wrap lines ala notepad
set smartcase " Case sensitive searching until capital letter
set nobackup " No backups needed because of the following
set undodir=~/.vim/undodir " Where we save our undos
set undofile " File per file undo copy
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


" specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'saltdotac/citylights.vim'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive' "git facilities
Plug 'vim-utils/vim-man'
Plug 'kien/ctrlp.vim' " File finding
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme gruvbox
set background=dark

" Make background transparent
" hi! Normal ctermbg=NONE guibg=NONE 

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_winsize = 25
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
let g:ycm_autoclose_preview_window_after_completion = 1

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O

" Navigate across windows 
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Split two windows
nnoremap <leader>v :wincmd v<CR>

nnoremap <leader>u :UndotreeShow<CR>

" Opens two windows, launches a file explorer, resizes it
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" Project search
nnoremap <leader>ps :Rg<SPACE>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>gd :YcmCompleter  GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter  FixIt<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+p

" Copy entire file
nnoremap <leader>gy ggVG
