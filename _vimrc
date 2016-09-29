set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}


call vundle#end()            " required
filetype plugin indent on    " required

Bundle "Lokaltog/vim-powerline"
Bundle "kien/rainbow_parentheses.vim"

set laststatus=2
"let g:Powerline_symbols='fancy'
let g:molokai_orginal = 1
let g:rehash256 = 1
set guifont=Menlo:h14
"colorscheme desert
set number
syntax enable
set background=light
colorscheme desert
set expandtab
set list
set listchars=tab:>-,trail:.

au VimEnter *.py,*.js,*.html,*.css,*.sls RainbowParenthesesToggle
au Syntax *.py,*.js,*.html,*.css,*.sls RainbowParenthesesLoadRound
au Syntax *.py,*.js,*.html,*.css,*.sls RainbowParenthesesLoadSquare
au Syntax *.py,*.js,*.html,*.css,*.sls RainbowParenthesesLoadBraces

" the outer layer is the last pair
" remove black for dark terminal
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 15


if has("gui_running")
  set guifont=Menlo:h14
  set gcr=a:blinkon0  "Disable cursor blink
  set lines=35
  set columns=80
endif

"Highlight TODO/FIXME/XXX
highlight myTODO cterm=bold term=bold ctermbg=yellow ctermfg=black
match myTODO /\(TODO\|XXX\|FIXME\)/


set cursorline
