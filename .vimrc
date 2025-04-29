" leader
let mapleader=','
let g:mapleader=','

" Show
set ruler	" show the current row and column
set number	" show the 
set showcmd	" display imcomplete commands
set showmode	" display the current mode
set showmatch   " show the matches when entering parenthesis
set matchtime=2 " tenths of a second to show the matches when entering parenthesis 

" plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ErichDonGubler/vim-sublime-monokai'
  Plug 'itchyny/lightline.vim'
  Plug 'airblade/vim-gitgutter' "]c:next hunk, [c: previous hunk
call plug#end()

" cursor
"set cursorcolumn
set scrolloff=7

" history
set history=1000    " how many lines of history vim has to remember

" tab
set expandtab 	" expand tabs to spaces
set smarttab

" indent
set shiftwidth=4
set tabstop=4
set softtabstop=4   " insert mode tab and backspace use 4 spaces
set smartindent autoindent shiftround

" syntax
syntax on

" filetype
filetype on     " open the detection of file type
filetype plugin on " open the plugin according to the file type
filetype indent on " open the indent rules according the file type

" base
set nocompatible   " stop compatible with vi
set autoread       " reload files when they changed on the disk 
set magic          " default is on, with expansion regex expression
set title          " change the terminal's title

" split
set splitbelow     " open the new panel on the below side
set splitright     " open the new panel on the right side

" search
set hlsearch       " highlight searches
set incsearch      " do incremental searching, search as you type
set ignorecase     " case insensitive
set smartcase      " no ignorecase if uppercase char present

" fold
set foldenable
set foldmethod=indent
set foldlevel=99	" show the current row and columnet foldlevel=99   " unfold all level, when opening the file
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

" remove highlight
noremap <silent><leader>/ :nohls<CR>

" 
noremap <leader>y "+y
noremap <leader>p "+p

" 
" Map ; to : and save a million keystrokes
nnoremap ; :


" kj replace Esc
inoremap kj <Esc>

"Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


" ============================ key map ============================
set pastetoggle=<F1>           "    when in insert mode, press <F5> to go to
nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set wrap! wrap?<CR>
nnoremap <F4> :set relativenumber! relativenumber?<CR>
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>


"auto finish close pattern
inoremap {<CR> {<CR>}<Esc>ko


" ctags
set tags=./tags,./TAGS,tags;~,TAGS;~
nnoremap ]] <C-]>
nnoremap ct <C-t>


" ============================ theme and status line ============================

" theme
set background=dark
set t_Co=256
colorscheme sublimemonokai

" set mark column color
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" status line
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2   " Always show the status line - use 2 lines for the status bar
