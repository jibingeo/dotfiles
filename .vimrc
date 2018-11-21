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

call plug#end()

"Airline
let g:airline_theme='ayu_mirage'

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <C-p> :Files<CR>

" Motion
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>

"Theme
set termguicolors 
let ayucolor="mirage"
colorscheme ayu

