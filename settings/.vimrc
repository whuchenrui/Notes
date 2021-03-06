syntax enable
colorscheme monokai

" ### Setup preferences ###
set tabstop=4 			" number of visual space per tab
set expandtab ts=4 sw=4 ai
set number  			" show line number
set showcmd  			" show command in bottom bar
set cursorline  		" highlight current line
set wildmenu    		" visual autocomplete for command menu
set showmatch    		" highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set history=500         " Sets how many lines of history VIM has to remember
set wildignore=*.o,*~,*.pyc  " Ignore compiled files
set ruler 				"Always show current position
set ignorecase			" Ignore case when searching
set magic				" For regular expressions turn magic on
set backspace=indent,eol,start   " Set backspace work as normal

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ### Setup bindings ###
" move vertically by visual line
nnoremap j gj
nnoremap k gk
inoremap jj <esc> 		" jj is escape

" Reference:
" 1. https://dougblack.io/words/a-good-vimrc.html
" 2. https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

