if &compatible
  set nocompatible
endif
filetype off

set rtp+=/usr/share/vim/vimfiles

call dein#begin(expand('~/.cache/dein'))

call dein#add('neomake/neomake')
call dein#add('altercation/vim-colors-solarized')
call dein#add('scrooloose/nerdtree')

call dein#end()

if dein#check_install()
  call dein#install()
endif

syntax enable
filetype plugin on
set number
set background=dark
colorscheme solarized

highlight Normal ctermbg=none
highlight NonText ctermbg=none

map <C-f> :NERDTreeToggle %<CR>
map <F33> :!make<CR>
