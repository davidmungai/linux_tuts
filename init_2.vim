syntax on
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set autoread                                                                                                                                                                                    
au CursorHold * checktime 

call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'dracula/vim'
  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html',  'coc-svelte',   'coc-json', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-phpls']
  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'tpope/vim-fugitive'
  Plug 'gabesoft/vim-ags'
  Plug 'beanworks/vim-phpfmt'
  " File Explorer with Icons
Plug 'dsawardekar/wordpress.vim'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-vinegar'
  Plug 'vim-airline/vim-airline'
  Plug 'yggdroot/indentline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-commentary'
  Plug 'ryanoasis/vim-devicons'
  Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'chrisbra/vim-autoread'
  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
call plug#end()

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END " Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme dracula

let g:webdevicons_enable = 2
set clipboard+=unnamedplus
let g:webdevicons_enable_netrw = 2

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" requires silversearcher-ag
" used to ignore gitignore files
let $FZF_DEFAULT_COMMAND = ''


" - Window using a Vim command
let g:fzf_layout = { 'window': '-tabnew' }

let g:fubitive_domain_pattern = 'code\.example\.com'
let g:WebDevIconsUnicodeDecorateFolderNodes=2
let g:WebDevIconsUnicodeDecorateFolderNodes = 2

" custom vim bindings
noremap <C-n> :tabnew<CR>
nnoremap H gT
nnoremap L	 gt
nnoremap tt :update<cr>
nnoremap <C-q>  :tabclose<CR>
nnoremap <C-A> ggVG
set relativenumber
inoremap jk <ESC>

" https://stackoverflow.com/questions/53538591/vim-how-to-remain-netrw-sidebar-window-when-i-open-a-new-tab
autocmd VimEnter * :Vexplore
autocmd TabNew * call feedkeys(":Vexplore\<CR>", 'n')

let g:indentLine_setColors = 0


let g:phpfmt_autosave = 0
