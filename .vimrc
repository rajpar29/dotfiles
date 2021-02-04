"" Mappings
let mapleader = "\<Space>"

map <C-b> :NERDTreeToggle<CR>
vnoremap <C-c> "+y
map <C-v> "+P
inoremap jk <Esc> " Map jk as Esc
inoremap kj <Esc>
nnoremap <Leader>ft :NERDTreeToggle<CR>
"Comment Lines
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
"nmap <leader>cc   <Plug>NERDCommenterToggle
"vmap <leader>cc   <Plug>NERDCommenterToggle<CR>gv

" Auto add ending bracket
:inoremap ( ()<Esc>i 
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i

"Buffers map
map <leader>bl :Buffers<CR>
map <leader>ff :Files<CR>
map <leader>fs :Rg<CR>
map <leader><Tab> <c-^>

nmap <C-w> :bd<CR>
imap <C-w> :bd<CR>

"" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdcommenter'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'ycm-core/YouCompleteMe'
    " KEEP DEVICONS ON LAST
    Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme gruvbox
set background=dark

"" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeMapActivateNode='l'
set mouse=a
let g:NERDTreeMouseMode=3
let g:NERDTreeWinPos = "right"

"" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'



command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

syntax on
filetype plugin on

set number                     " Show current line number
set relativenumber             " Show relative line numbers
set cursorline
set incsearch
set ignorecase
set hlsearch
set smartindent
set shiftwidth=4  " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces
set tabstop=4 softtabstop=4  " show existing tab with 4 spaces width
set nowrap
set encoding=UTF-8
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
"set clipboard=unnamedplus
set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
" PUT IN BOTTOM
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar


