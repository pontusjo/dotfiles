" Plugin
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'Yazeed1s/minimal.nvim'
Plug 'preservim/nerdtree'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/conflict-marker.vim'

call plug#end()

" Option
set title
set shiftwidth=4
set softtabstop=4
set tabstop=4
set scrolloff=5
set mouse=a
set noswapfile
set termguicolors
set updatetime=50

" Bind
nmap <silent> <C-p>         :Files <CR>
nmap <silent> <C-f>         :Rg <CR> 
nmap <silent> <C-t>         :bp <CR>
nmap <silent> <C-e>         :NERDTreeToggle <CR>
nmap <silent> <C-d>         :GitGutterPreviewHunk <CR>
nmap <silent> <C-q>         :qa <CR>
nmap <silent> <2-LeftMouse> <Plug>(coc-definition)
nmap <silent> gD            <Plug>(coc-implementation)
nmap <silent> gr            <Plug>(coc-references)

" Color & style
colo minimal-base16
let NERDTreeMinimalUI=1
let g:conflict_marker_highlight_group = ''
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'
highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e
highlight ConflictMarkerCommonAncestorsHunk guibg=#754a81

lua << END
	require('lualine').setup()
END
