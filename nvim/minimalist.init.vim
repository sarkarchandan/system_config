" https://github.com/neovim/neovim/blob/master/INSTALL.md
" https://github.com/junegunn/vim-plug?tab=readme-ov-file#neovim

:set number
:set relativenumber
:set autoindent
:set mouse=a
:set shiftwidth=4
:set tabstop=4
:set encoding=UTF-8

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'vim-airline/vim-airline' " Vim Airline
Plug 'vim-airline/vim-airline-themes' " Vim Airline Theme
Plug 'ryanoasis/vim-devicons' " Dev Icons
Plug 'projekt0n/github-nvim-theme' " GitHub Theme

call plug#end()

" NerdTree Configuration
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

colorscheme github_dark_dimmed

" TagBar KeyMapping
nmap <F8> :TagbarToggle<CR>

" Vim Airline customizations
:set timeoutlen=50
let g:airline_theme = 'raven'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
