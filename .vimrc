syntax on

call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/goyo.vim'

call plug#end()"syntax enable

" How many lines of history should Vim remember?
set history=500

" Highlight all search results
set hlsearch

" swp files are so annoying
set noswapfile

set backspace=indent,eol,start
set history=500
set wildmode=list:longest,full
set autoindent
set smartindent
set number
set nowrap
set nobackup
set ruler
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showmatch
set noexpandtab
set expandtab
set hlsearch
set ai

" Turn off sounds, omg!
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn off macvim sounds
if has("gui_macvim")
        autocmd GUIEnter * set vb t_vb=
endif

" See if you can alter the color and width of this
set colorcolumn=99

" SOLARIZED
set background=dark
colorscheme solarized

" Dealing with whitespace
highlight ExtraWhitespace ctermbg=grey guibg=grey
match ExtraWhitespace /\s\+$/

fun! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,javascript,html autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()


