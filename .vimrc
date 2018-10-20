set number 
set relativenumber
set termguicolors

let loaded_matchparen = 1

" Tabs.
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

" vim-plug
set rtp+=~/.vplug
call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
map <C-p> :Files<CR>

" bash16-shell(https://github.com/chriskempson/base16-shell)
func! s:reloadColor()
  if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
  endif
endfunc

call s:reloadColor()

augroup reload_color
  autocmd!
  autocmd FocusGained * call s:reloadColor()
augroup END
