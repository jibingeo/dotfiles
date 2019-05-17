set number 
set relativenumber
set laststatus=2
" set noshowmode
set signcolumn=yes

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
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'isRuslan/vim-es6'
Plug 'tpope/vim-fugitive'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'easymotion/vim-easymotion'
Plug 'sbdchd/neoformat'
Plug 'alexlafroscia/postcss-syntax.vim'
Plug 'jparise/vim-graphql'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'rizzatti/dash.vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim'
" For Denite features
Plug 'Shougo/denite.nvim'

call plug#end()

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <C-p> :Files<CR>

" Motion
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>

" Theme
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
let ayucolor="mirage"
colorscheme ayu
hi SignColumn guibg=None

" FZF
let g:fzf_colors = { 	
  \  'bg+': ['bg', 'Normal'],	
  \  'fg+': ['fg', 'Exception']	
  \ }

function! s:fzf_statusline()
  setlocal statusline=──[\ fzf\ ] 
endfunction


autocmd! User FzfStatusLine call <SID>fzf_statusline()

" Airline
" let g:airline_theme='ayu_mirage'

" Neoformat
augroup fmt
  autocmd!
  " au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END


hi VertSplit guifg=#607080
hi StatusLine guibg=none guifg=#607080 cterm=italic
hi StatusLineNC guibg=none guifg=#607080
hi User1 guibg=none guifg=#fecb6e

" Statusline
set statusline=──[\ %1*%f%0*\ ]

" Splitline
set fillchars=stl:─
set fillchars+=stlnc:─

augroup fmt
  autocmd!
  au WinEnter * setl statusline=
  au WinLeave * setl statusline=──[\ %f\ ]
augroup END

