" Options
set title
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
set scrolloff=5
set mouse=a
set noswapfile

" Plugins will be downloaded under the specified directory
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sindrets/diffview.nvim'
Plug 'preservim/nerdtree'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alligator/accent.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-tree/nvim-web-devicons'

" List ends here. Plugins become visible to Vim after this call
call plug#end()

" Commands
nmap <silent> <C-p> :Files <CR>
nmap <silent> <C-f> :Rg <CR> 
nmap <silent> <C-t> :bp <CR>
nmap <silent> <C-e> :NERDTree <CR>
nmap <silent> <C-d> :GitGutterPreviewHunk <CR>
nmap <silent> <C-q> :qa <CR>
nmap <silent> <2-LeftMouse> <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remove help from nerd tree
let NERDTreeMinimalUI=1

" Set theme
colo accent

" Clear GitGutter SignColumn
highlight clear SignColumn

" Set update time
set updatetime=50

lua <<EOF
EOF
