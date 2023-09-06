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
Plug 'vim-airline/vim-airline' " Vim Airline
Plug 'vim-airline/vim-airline-themes' " Vim Airline Theme
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
Plug 'nvim-treesitter/nvim-treesitter' " Completion Server
Plug 'ryanoasis/vim-devicons' " Dev Icons
Plug 'https://github.com/tc50cal/vim-terminal.git' " Vim Terminal
Plug 'projekt0n/github-nvim-theme' " GitHub Theme
Plug 'https://github.com/preservim/tagbar.git' " Tagbar

" NOTES
" Proper functions of many of these plugins depends upon the latest or recent
" version of nvim or vim.
" Dev Icons would work with NerdTree only when we set the encoding correctly
" and download NerdFonts: https://www.nerdfonts.com/ and place the same to
" directory: ~/.local/share/fonts 
" Tagbar needs the installation ctags: https://docs.ctags.io/en/latest/autotools.html
" NerdTree needs at least the following key mapping to be able to function as
" we expect to.
call plug#end()

" NERDTree filesystem traversal customizations
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Set GitHub theme
colorscheme github_dark_dimmed

" TagBar KeyMapping
nmap <F8> :TagbarToggle<CR>

" Vim Airline customizations
:set timeoutlen=50
let g:airline_theme = 'powerlineish'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
