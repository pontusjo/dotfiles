" Plugin
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'farmergreg/vim-lastplace'
Plug 'romgrk/barbar.nvim'
Plug 'mhinz/vim-startify'

Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/conflict-marker.vim'
Plug 'jiangmiao/auto-pairs'


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
nmap <silent> <S-f> :Rg <CR> 
nmap <silent> <C-p> :Files <CR>
nmap <silent> <C-f> :BLines <CR>
nmap <silent> <C-t> :bp <CR>
nmap <silent> <C-e> :NERDTreeToggle <CR>
nmap <silent> <C-d> :GitGutterPreviewHunk <CR>
nmap <silent> <C-q> :qa <CR>
nmap <silent> <C-Left> :bprev <CR>
nmap <silent> <C-Right>	:bnext <CR>
nmap <silent> <2-LeftMouse> <Plug>(coc-definition)
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Color & style
colo desert
let NERDTreeMinimalUI=1
let g:conflict_marker_highlight_group = ''
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end = '^>>>>>>> .*$'
highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e
highlight ConflictMarkerCommonAncestorsHunk guibg=#754a81

let g:startify_custom_header = []
let g:startify_files_number = 20
let g:startify_enable_special = 0
let g:startify_lists = [{ 'type': 'files', 'header': ['']}]

lua << END
	require('lualine').setup()
END
