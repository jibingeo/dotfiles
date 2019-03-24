set number 
set relativenumber
set laststatus=2
set noshowmode

let loaded_matchparen = 1

" Tabs.
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set hidden

" Clipboard
set clipboard=unnamed

" Safewrite & Swapfile
set nobackup
set noswapfile
set nowritebackup

" vim-plug
set rtp+=~/.vplug
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'isRuslan/vim-es6'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'easymotion/vim-easymotion'
Plug 'sbdchd/neoformat'
Plug 'Yggdroot/indentLine'
Plug 'alexlafroscia/postcss-syntax.vim'
Plug 'jparise/vim-graphql'

call plug#end()

" NERDTree
map <C-n> :NERDTreeToggle<CR>
"
" Auto close on file selection
let NERDTreeQuitOnOpen=1
"
" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <C-p> :Files<CR>

" Motion
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>

" Theme
set termguicolors 
let ayucolor="mirage"
colorscheme ayu

" FZF
let g:fzf_colors = { 	
  \  'bg+': ['bg', 'Normal'],	
  \  'fg+': ['fg', 'Exception']	
  \ }

" Airline
let g:airline_theme='ayu_mirage'

" IntentLine
let g:indentLine_char = '▏'
let g:indentLine_setColors = 0
augroup fmt
  autocmd!
  au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END
