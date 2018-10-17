" Tabs.
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

" vim-plug
set rtp+=~/.vplug
call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
call plug#end()

" vim color based on
" bash16-shell(https://github.com/chriskempson/base16-shell)
if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif

