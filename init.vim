" Options
set title " Show file title
set shiftwidth=4
set softtabstop=4
set tabstop=4
set foldmethod=marker
set nowrap
set showmatch
set completeopt=menu,menuone,noselect
set whichwrap=b,s,<,>,[,]
set mouse=a
set number
set scrolloff=5
set noswapfile

" Plugins will be downloaded under the specified directory
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sindrets/diffview.nvim'
Plug 'preservim/nerdtree'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'davidosomething/vim-colors-meh'

" List ends here. Plugins become visible to Vim after this call
call plug#end()

" Commands
nnoremap <silent> <C-p> :Files <CR>
nnoremap <silent> <C-f> :Rg <CR> 
nnoremap <silent> <C-t> :bp <CR>
nnoremap <silent> <C-e> :NERDTree <CR>

" Open NERDTree on startup 
autocmd VimEnter * NERDTree .

" Remove help from nerd tree
let NERDTreeMinimalUI=1

" Set theme
colorscheme meh
