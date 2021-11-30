set nocompatible  " be iMproved, required
filetype off  " required
set exrc
set ic
set nowrap
let mapleader = ','

set encoding=UTF-8

" ====set rtp+=~/.vim/bundle/Vundle.vim

" === call vundle#begin()

call plug#begin('c:/Users/David/vimfiles/plugged')

" ==== plugin manager
" === Plug 'VundleVim/Vundle.vim'

" ==== helpers
" === Plug 'vim-scripts/L9'
Plug 'tpope/vim-sensible'

" === sneak - motions
Plug 'justinmk/vim-sneak'

Plug 'triglav/vim-visual-increment'

" ==== File tree
Plug 'scrooloose/nerdtree'

Plug 'nachumk/systemverilog.vim'

Plug 'vimwiki/vimwiki'

" ==== Completion
" === Plug 'Valloric/YouCompleteMe'

" ==== Git
" === Plug 'airblade/vim-gitgutter'
" === Plug 'tpope/vim-fugitive'

" ==== syntax helpers
" === Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
" === Plug 'cakebaker/scss-syntax.vim'
" === Plug 'othree/yajs.vim'
" === Plug 'mitsuhiko/vim-jinja'
" === Plug 'octol/vim-cpp-enhanced-highlight'
" === Plug 'ap/vim-css-color'
Plug 'Vimjas/vim-python-pep8-indent'
" === Plug 'python-rope/rope'
" === Plug 'python-rope/ropemode'
" === Plug 'python-rope/ropevim'
" === Plug 'klen/pylama'

" ==== moving / searching
" === Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'

" ==== snippets
" === Plug 'SirVer/ultisnips'

" Status bar on bottom
Plug 'bling/vim-airline'

" ==== PLUGIN THEMES
Plug 'morhetz/gruvbox'

Plug 'vim-scripts/xoria256.vim'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()
" === call vundle#end()

" filetype plugin indent on
filetype plugin on

" ==== Colors and other basic settings
colorscheme gruvbox
" === colorscheme darkblue
set guifont=lucida_sans_typewriter_regular:h12
"set fillchars+=vert:|
syntax on
set hlsearch
set cursorcolumn
set cursorline
set rnu
set background=dark
set ruler
set hidden
set number
set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
let &colorcolumn="80"
" === :set guioptions-=m  "remove menu bar
" === :set guioptions-=T  "remove toolbar
" === :set guioptions-=r  "remove right-hand scroll bar
" === :set guioptions-=L  "remove left-hand scroll bar
" === :set lines=999 columns=999

" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" ==== Syntastic
" === let g:syntastic_always_populate_loc_list = 1
" === let g:syntastic_auto_loc_list = 1
" === let g:syntastic_check_on_open = 1
" === let g:syntastic_check_on_wq = 0
" === set statusline+=%#warningmsg#
" === set statusline+=%{SyntasticStatuslineFlag()}
" === set statusline+=%*
" === let g:syntastic_javascript_checkers = ['eslint']
" === let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
" === let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'python']
" === let g:syntastic_yaml_checkers = ['jsyaml']
" === let g:syntastic_html_tidy_exec = 'tidy5'

" === flake8
" === let g:flake8_show_in_file=1

" ==== snippets
" If you want :UltiSnipsEdit to split your window.
" === let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
" === let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" === let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" === let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
" === let g:UltiSnipsExpandTrigger = "<tab>"
" === let g:UltiSnipsJumpForwardTrigger = "<tab>"
" === let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ==== Easymotion
" === let g:EasyMotion_do_mapping = 0
" === let g:EasyMotion_smartcase = 1
" === nmap f <Plug>(easymotion-s)

" ==== moving around
" === nmap <silent> <A-Up> :wincmd k<CR>
" === nmap <silent> <A-Down> :wincmd j<CR>
" == nmap <silent> <A-Left> :wincmd h<CR>
" === nmap <silent> <A-Right> :wincmd l<CR>

" ==== disable mouse
" === set mouse=c
inoremap jk <esc>
inoremap <esc> <nop>

" === make searches appear in middle of screeen
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz

" ==== disable swap file warning
set shortmess+=A

" ==== custom commands
" === command JsonPretty execute ":%!python -m json.tool"
set secure

