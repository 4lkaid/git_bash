if empty(glob('~/.vim/autoload/plug.vim'))
	echo 'Downloading junegunn/vim-plug to manage plugins...'
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let &t_EI.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_ut=''
set autochdir
set autoindent
set cursorline
set ignorecase
set list
set listchars=tab:\|\ ,trail:▫
set noexpandtab
set number
set relativenumber
set scrolloff=5
set shiftwidth=4
set shortmess+=c
set showcmd
set smartcase
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set wildmenu

tnoremap <C-N> <C-\><C-N>

let mapleader=' '
noremap <Leader>' :term<CR>
noremap <Leader><Leader> <Esc>/<++><CR>:nohlsearch<CR>c4l
noremap <Leader>h <C-W>h
noremap <Leader>j <C-W>j
noremap <Leader>k <C-W>k
noremap <Leader>l <C-W>l
noremap mj :m+<CR>
noremap mk :m-2<CR>
noremap s <Nop>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sk :set nosplitbelow<CR>:split<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>
noremap te :tabe<CR>
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
noremap tq :tabclose<CR>
vnoremap Y "+y

call plug#begin('~/.vim/plugged')
Plug '4lkaid/vim-deus'
Plug 'itchyny/lightline.vim'
call plug#end()

" === vim-deus
colorscheme deus
hi Normal ctermfg=none ctermbg=none

" === lightline.vim
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ 'active': {
	\     'left': [['mode', 'paste'], ['readonly', 'filename', 'modified', 'charvaluehex']]
	\ },
	\ 'component': {
	\     'charvaluehex': '0x%B'
	\ },
	\ }
let g:lightline.component = {
	\ 'close': '%999X ✗ ',
	\ }

execute 'nohlsearch'
