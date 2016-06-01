filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' "required
Plugin 'tpope/vim-fugitive' "required 
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
call vundle#end()
filetype plugin indent on " Put your non-Plugin stuff after this line


syntax enable
set nu
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set ruler
set autoread
" set autoindent
" set cindent
" set smartindent
" set smarttab
" set cb=unnamed
set autochdir
" set nocursorcolumn
" set nocursorline
" set norelativenumber
syntax sync minlines=256
set scrolljump=15
set nowrap 

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug '~/my-prototype-plugin'
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-signify'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" syntastic set
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_phpcs_args=' --standard=/Applications/MAMP/bin/php/php5.5.10/lib/php/PHP/CodeSniffer/Standards/my_custom '
" /Applications/MAMP/bin/php/php5.5.10/lib/php/PHP/CodeSniffer/Standards/my_custom 

" colorscheme skittles_berry
" colorscheme black_angus
" colorscheme desert

colorscheme devbox-dark-256
set background=dark
set cursorline
let g:airline_theme='oceanicnext'
hi CursorLine term=bold cterm=bold guibg=Grey40

let NERDTreeShowBookmarks=1

let mapleader = ","
nmap <leader>ne :NERDTree<cr>

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
 autocmd!
 autocmd FileType php call PhpSyntaxOverride()
augroup END

" PHP SETTING
" let g:PHP_autoformatcomment = 0
" let g:PHP_default_indenting = 1
" let g:PHP_BracesAtCodeLevel = 1


" Bundle 'https://github.com/freeo/vim-kalisi'
" colorscheme kalisi
" set background=dark
" let g:airline_theme='kalisi'
" set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
