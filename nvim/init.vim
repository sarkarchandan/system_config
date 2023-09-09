:set number
:set relativenumber
:set autoindent
:set mouse=a
:set shiftwidth=4
:set tabstop=4
" Following is for documentation only. We might want to set different width
" for the code space for working with different programmming languages. Hence,
" it is advised to set the colorcolumn property from the code editor window
" instead.
":set colorcolumn=80|120

" Setting guifont property and the encoding are important to set the editor 
" font as well as it is important for the github-nvim-theme to work properly 
" with the NerdTree.
:set guifont=DejaVuSansMNerdFontMono-Regular
:set encoding=UTF-8

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
Plug 'valloric/youcompleteme' " YouCompleteMe

" NOTES
" Proper functions of many of these plugins depends upon the latest or recent
" version of nvim or vim.
" Dev Icons would work with NerdTree only when we set the encoding correctly
" and download NerdFonts: https://www.nerdfonts.com/ and place the same to
" directory: ~/.local/share/fonts 
" Tagbar needs the installation ctags: https://docs.ctags.io/en/latest/autotools.html
" NerdTree needs at least the following key mapping to be able to function as
" we expect to.
" YouCompleteMe plugin requires that we compile the language servers
" explicitly. Documentation for the plugin can be found here: 
" https://vimawesome.com/plugin/youcompleteme#linux-64-bit
call plug#end()

" NERDTree filesystem traversal customizations
" It is important to set all four of them as a basic key mapping
" so that the toggling of NerdTree can happen seamlessly. With the
" following settings we toggle the NerdTree with ctrl + t.
" Important reference for NerdTree file system interaction:
" https://sookocheff.com/post/vim/creating-a-new-file-or-directoryin-vim-using-nerdtree/
" Important reference for workspace switching while NerdTree is enabled:
" https://stackoverflow.com/questions/1656591/how-to-jump-back-to-nerdtree-from-file-in-tab
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
