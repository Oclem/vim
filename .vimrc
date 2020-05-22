map :q :q!
" ========== Vim Basic Settings ============="
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
highlight LineNr ctermfg=grey ctermbg=white
set cursorline
highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
colorscheme rdark-terminal
"filetype plugin indent on
syntax on
" ========================================================================================
" Make vim incompatbile to vi.
set nocompatible
set modelines=0
" ========================================================================================
"TAB settings.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set showtabline=2
set ruler
" ========================================================================================
" More Common Settings.
set encoding=utf-8
set scrolloff=3
""set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set history=1000
set undolevels=10000
set nobackup
set noswapfile
set ttyfast
set ruler
set backspace=indent,eol,start
set pastetoggle=<F2>
"set relativenumber
set number
set norelativenumber
set undofile
set undodir=/tmp
set shell=/bin/bash
set lazyredraw
set matchtime=3
" ========================================================================================
"Changing Leader Key
let mapleader = ","
" ========================================================================================
" Map : to ; also in command mode.
nnoremap ; :
vmap ; :
nmap <silent> <leader>/ :nohlsearch<CR>
" ========================================================================================
" Set title to window
set title
" Dictionary path, from which the words are being looked up.
" ========================================================================================
""set dictionary=/usr/share/dict/words
" ========================================================================================
" Make Vim able to edit corntab fiels again.
set backupskip=/tmp/*,/private/tmp/*"
" ========================================================================================
"Settings for Searching and Moving
""nnoremap / /\v
""vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %
" ========================================================================================
" go to next/previous tag
nnoremap <leader>f :tnext<cr>
nnoremap <leader>d :tprev<cr>
nnoremap <leader>tj :tjump<cr>
" ========================================================================================
" Make Vim to handle long lines nicely.
set wrap
set textwidth=79
"set colorcolumn=+1
"set formatoptions=qrn1
"set colorcolumn=79
" ========================================================================================
" To  show special characters in Vim
"set list
set listchars=tab:▸\ ,eol:¬
" ========================================================================================
" set unnamed clipboard
set clipboard=unnamedplus
"==========================================================================="
" Different search patterns 
let g:cpp_pattern = "*.{cpp,c,h,hpp}"
let g:java_pattern = "*.{java}"
let g:makefile_pattern = "Makefile*"
let g:text_pattern = "*.{txt,text}"
let g:python_pattern = "*.{py}"
let g:cpp_java_pattern = "*.{cpp,c,h.hpp,java,cc,hh}"
"==========================================================================="
" C\C++ projects settings
"==========================================================================="
"Global project settings 
let g:project_root = "."
let g:search_root = g:project_root
let g:search_pattern = "*.*"
"==========================================================================="
" Get Rid of stupid Goddamned help keys
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
"==========================================================================="
" Set vim to save the file on focus out.
au FocusLost * :wa
"==========================================================================="
"==========================================================================="
" Adding More Shorcuts keys using leader kye.
" Leader Kye provide separate namespace for specific commands.
",W Command to remove white space from a file.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" ,ft Fold tag, helpful for HTML editing.
nnoremap <leader>ft vatzf
" ,q Re-hardwrap Paragraph
nnoremap <leader>q gqip
" ,ev Shortcut to edit .vimrc file on the fly on a vertical window.
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
"==========================================================================="
" Working with split screen nicely
" Resize Split When the window is resized"
au VimResized * :wincmd =
"==========================================================================="
" Wildmenu completion "
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig,*.rej "Merge resolution files"
"==========================================================================="
" Make Sure that Vim returns to the same line when we reopen a file"
"==========================================================================="
" go to place of last change
nnoremap g; g;zz
" =========== END Basic Vim Settings ===========
"==========================================================================="   
" Different search patterns                                                                                                   
let g:cpp_pattern = "*.{cpp,c,h,hpp}"                                                                                         
let g:java_pattern = "*.{java}"                                                                                               
let g:makefile_pattern = "Makefile*"                                                                                          
let g:text_pattern = "*.{txt,text}"                                                                                           
let g:python_pattern = "*.{py}"                                                                                               
let g:cpp_java_pattern = "*.{cpp,c,h.hpp,java,cc,hh}"  
filetype plugin on                                                              
 autocmd FileType python set omnifunc=pythoncomplete#Complete                    
 autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS          
 autocmd FileType html set omnifunc=htmlcomplete#CompleteTags                    
 autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags                      
 autocmd FileType css set omnifunc=csscomplete#CompleteCSS                       
 autocmd FileType cpp set omnifunc=omni#cpp#complete#Main
syntax on
set mouse-=a
set backspace=indent,eol,start
"colorscheme peachpuff
""colorscheme torte
set t_Co=256
highlight comment ctermfg=grey
highlight constant ctermfg=224
set shiftwidth=2
nnoremap <CR> :noh<CR><CR>
"inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
"execute pathogen#infect()
filetype plugin indent on
map <leader>mm :NERDTreeToggle<cr>
" Always show the status line
set laststatus=2
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
"autocmd vimenter * NERDTree
