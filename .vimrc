syntax on
set number relativenumber
set encoding=utf-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set incsearch
set hlsearch
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set splitright
imap jj <Esc>

call vundle#begin()

" Tree and Some required
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'VundleVim/Vundle.vim'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" Auto Complete ()and 
Plugin 'tmsvg/pear-tree'

" Emmet for Vim
Plugin 'mattn/emmet-vim'

" YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'

" Gruvbox Theme
Plugin 'morhetz/gruvbox'

" For JS and TS support
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
Plugin 'jparise/vim-graphql'


call vundle#end()
filetype plugin indent on

" Gruvbox Config
let g:gruvbox_contrast_dark = "hard"

" Emmet Config
let g:user_emmet_leader_key=','

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" For Large jsx or tsx files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" NerdTree shortcut
nnoremap <C-n> :NERDTree<CR>

" Tooltip
" nnoremap <silent> K :call CocAction('doHover')<CR>

" Coc language server
" let g:coc_global_extensions = [
"  \ 'coc-tsserver',
"  \ 'coc-prettier',
"  \ 'coc-eslint',
"  \ 'coc-pyright',
"  \ 'coc-html',
"  \ 'coc-css',
"  \ 'coc-tailwindcss',
"  \ ]

" New buffer to right
nnoremap <C-t>  :vert new<CR>

" Gruvbox Color Scheme
colorscheme gruvbox

