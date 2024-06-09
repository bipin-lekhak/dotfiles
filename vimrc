set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'sheerun/vim-polyglot'
Plugin 'dracula/vim', {'name':'dracula'}
Plugin 'dense-analysis/ale'
Plugin 'frazrepo/vim-rainbow'
Plugin 'itchyny/lightline.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'hzchirs/vim-material'

call vundle#end()
filetype plugin indent on

" ignore files in Nerd Tree
let NerdTreeIgnore=['\.pyc$', '\~$']

" enable syntax highlighting
syntax enable

" set colorscheme
" colorscheme dracula
let g:material_style='oceanic'
set background=dark
colorscheme vim-material

" show line number
set number

" show cursor line
set cursorline

" set tabs to 4 spaces
set ts=4

" set intend to next line when code
set autoindent
set smartindent

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


" show whitespace
:highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under cursors current line
set cursorline

" show matching part of pair for [] {} and ()
set showmatch

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable folding
set foldmethod=indent
set foldlevel=99

" enable folding with spacebar
nnoremap <space> za

" use system keyboard
set clipboard=unnamed

" NerdTree Mapping
map <silent> <C-n> :NERDTreeTabsToggle<CR>

" Rainbow brackets
let g:rainbow_active=1

" lastline
set laststatus=2

" Store tons of history
set history=1000

" Set 256-color
set t_Co=256

" Set lang server for python
imap <c-space> <Plug>(asyncomplete_force_refresh)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

if executable('pyls')
        " pip install python-language-server
        au User lsp_setup call lsp#register_server({
             \ 'name': 'pyls',
             \ 'cmd': {server_info->['pyls']},
             \ 'allowlist': ['python'],
             \ })
endif
