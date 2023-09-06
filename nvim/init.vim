:set number
:set relativenumber
:set autoindent
:set mouse=a
:set shiftwidth=4
:set tabstop=4
:set encoding=UTF-8
:set guifont=DejaVuSansMNerdFontMono-Regular

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'vim-airline/vim-airline' " VimAirline
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
Plug 'nvim-treesitter/nvim-treesitter' " Completion Server
Plug 'ryanoasis/vim-devicons' " Dev Icons
Plug 'https://github.com/tc50cal/vim-terminal.git' " Vim Terminal
Plug 'projekt0n/github-nvim-theme' " GitHub Theme

call plug#end()

" NERDTree filesystem traversal customizations
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Set GitHub theme
colorscheme github_dark_dimmed
