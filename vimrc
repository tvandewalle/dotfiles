set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Solarized theme
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" NERDTreeTabs
let g:nerdtree_tabs_open_on_console_startup=2
let g:nerdtree_tabs_startup_cd=1

" Color scheme
set number
syntax enable
set background=dark
silent! colorscheme solarized
set t_Co=256                        " force vim to use 256 colors
let g:solarized_termcolors=256      " use solarized 256 fallback

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set showcmd

" Enable airline
let g:airline#extensions#tabline#enabled = 1
" user powerline fonts
let g:airline_powerline_fonts = 1
" Show statusline at the bottom
set laststatus=2

" Indent Guide settings
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1

"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=65
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=45

" <F5> to delete trailing whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Python standards
au BufNewFile,BufRead *.py set
    \ ft=python
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" Markdown files
au BufNewFile,BufRead *.md set
    \ ft=markdown
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent

" JSON files
au BufNewFile,BufRead *.json set
    \ ft=json
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=79
    \ expandtab
    \ autoindent

" Other file typess
au BufNewFile,BufRead *.yml set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=79
    \ expandtab
    \ autoindent

" Other file typess
au BufNewFile,BufRead *.css, *.html set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ textwidth=79
    \ expandtab
    \ autoindent
