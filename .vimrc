set number 
set relativenumber
set laststatus=2
set noshowmode

set termguicolors

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

Plug 'chriskempson/base16-vim'
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

call plug#end()

"Airline
let g:airline_theme='base16'

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
map <C-p> :Files<CR>

" Motion
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>

func! s:customTheme()
  "Custom Theme
  highlight VertSplit ctermbg=NONE guibg=NONE
  highlight LineNr ctermbg=NONE guibg=NONE
  hi clear CursorLineNr
endfunc

" bash16-shell(https://github.com/chriskempson/base16-shell)
func! s:reloadTheme()
  if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
  endif
  call s:customTheme()
endfunc

call s:reloadTheme()

augroup reload_color
  autocmd! FocusGained * call s:reloadTheme()
augroup END

augroup CLClear
    autocmd! ColorScheme * call s:customTheme()
augroup END
