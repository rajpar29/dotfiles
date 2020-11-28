"" Mappings

map <C-b> :NERDTreeToggle<CR>
vnoremap <C-c> "+y
map <C-v> "+P


"" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox' 
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
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
" remove separators for empty sections
let g:airline_skip_empty_sections = 1

syntax on

set number                     " Show current line number
set relativenumber             " Show relative line numbers
set cursorline
set incsearch
set ignorecase
set hlsearch
set smartindent
set shiftwidth=4
set tabstop=4 softtabstop=4
set nowrap
set encoding=UTF-8
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set clipboard=unnamedplus
" PUT IN BOTTOM
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar


