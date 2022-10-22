"  _    _            ( )               _
" | |__| | __ _  _ _  \| ___     __ __(_) _ __   _ _  __
" | / /| |/ _` || '_|   (_-/     \ V /| || '  \ | '_|/ _|
" |_\_\|_|\__/_||_|     /__/      \_/ |_||_|_|_||_|  \__|
"

    set nocompatible
    let mapleader =" "
	syntax on
    set t_Co=256            " force terminal to 256 colorsA
    set noerrorbells        " don't make a noise
    set showcmd             " show command being typed
    set showmode            " display mode (INSERT/REPLACE/etc.)
    set title               " Display name of file being edited
	filetype plugin on
	set encoding=utf-8
	set number relativenumber
	set clipboard+=unnamedplus
	set ignorecase
    set incsearch           " show search matches while typing
    set hlsearch            " highlight search results
    set wrapscan            " wrap around file when searching
	set smartcase
	set smarttab
	set scrolloff=1
	set sidescrolloff=3
	set mouse=a
	set path+=**
	set expandtab
	set tabstop=4
	set shiftwidth=4
	colorscheme desert
	set background=dark
    set splitbelow splitright

" Spell checking in English
	map <leader>e :setlocal spell! spelllang=en_us<CR>

" Spell checking in Slovene
	map <silent> <leader>s :setlocal spell! spelllang=sl_si<CR><CR>

" Tab controls (Alt+Left/Right)
	nnoremap <M-Left> :tabprevious<CR>
	nnoremap <M-Right> :tabnext<CR>

" Easily move lines up and down
	nnoremap <c-Down> :m .+1<CR>==
	nnoremap <c-Up> :m .-2<CR>==
	inoremap <c-Down> <ESC>:m .+1<CR>==gi
	inoremap <c-Up> <ESC>:m .-2<CR>==gi
	vnoremap <c-Down> :m '>+1<CR>gv=gv
	vnoremap <c-Up> :m '<-2<CR>gv=gv

" See whitespaces toggle
	set listchars=tab:>-,trail:·,extends:>,precedes:<
	map <silent><leader>ws :set list!<CR>

" Folding in vim filetype
	autocmd FileType vim setlocal foldmethod=marker

" Coding config + QOL features {{{
" Vim autocompletion config (omnifunc)
	set wildmode=longest,list,full
	set wildignore=*.pdf,*.docx
	set omnifunc=syntaxcomplete#Complete

" Disables automatic commenting on new line
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" }}}

" Netrw config (vim's native file manager) {{{
	let g:netrw_liststyle = 3
	let g:netrw_banner = 0
	let g:netrw_browse_split = 4
	let g:netrw_winsize = 25

" Netrw toggle function
	let g:NetrwIsOpen=0

	function! ToggleNetrw()
    	if g:NetrwIsOpen
        	let i = bufnr("$")
        	while (i >= 1)
            		if (getbufvar(i, "&filetype") == "netrw")
                		silent exe "bwipeout " . i
            		endif
            		let i-=1
        	endwhile
        let g:NetrwIsOpen=0
    	else
        let g:NetrwIsOpen=1
        silent Lexplore .
    	endif
	endfunction

" Toggle netrw keybind
	noremap <silent><leader>n :call ToggleNetrw()<CR>
" }}}

