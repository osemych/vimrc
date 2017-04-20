set nocompatible

" Plugins in ~.vim/bundle/ will get loaded automatically
execute pathogen#infect()

" Set a nice theme.
colorscheme Tomorrow-Night-Eighties

if !has('gui_running') 
  if has('builtin_terms') && ((&term == "pcterm") || (&term == "win32")) 
    set t_Co=256 
  endif 
endif 

if has("gui_running")
  " Set a nicer font.
  set guifont=Consolas:h11:cDEFAULT
  " Hide the toolbar.
  set guioptions-=T
  set guioptions-=M
  set guioptions-=m
  " Open vim with a given size
  set lines=40 columns=150
endif

" Always display status line
set laststatus=2

" Use unicode/utf-8 encoding by default for keyboard, display and files.
set encoding=utf-8

" Add a colored column at 90 to avoid going to far to the right
set colorcolumn=90

" Display line and column number in bottom ruler.
set ruler

" Display the line numbers.
set number

" Activate syntax highlighting.
syntax enable

" Needed for nerdcommenter
filetype plugin on

" Shows a horizontal highlight on the line with the cursor.
set cursorline

" When selecting a parenthesis it will highlight the one matching
set showmatch

" Activate case-insensitive & smart case search (if a capital letter is used
" in your search query, Vim will search case-sensitive).
set ignorecase 
set smartcase

" Set wildchar visual completion awesomeness.
" This is enhanced command line completion and it rocks.
set wildmenu 
set wildmode=full

" Turning on line wrapping and line-break for easy text-file editing.
" Line-break wraps full words at the end of a sentence for readability.
set wrap
set linebreak

" Set tabs to 4 characters and expand to spaces, activate smart indentation.
" See tabstop help for more info.
" Setting tabstop & softtabstop to the same value to avoid messy layout with mixed tabs & spaces.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

" Enabled folding on indent level. That way it works on any code & html, xml
" etc. 
" Setting foldlevelstart ensures that for newly opened files folds are open
" unless they are 10 levels deep.
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10      " no more than 10 fold levels please

" Set default Leader Key
let mapleader=","

" Keep more info in memory to speed things up
set hidden
set history=100

" Ability to cancel a search with Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>


" Arrow keys mapping
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" Set syntax highlighting for some .NET file types as XML files, cause that's what they are really.
autocmd BufNewFile,BufReadPost *.config set filetype=xml
autocmd BufNewFile,BufReadPost *.csproj set filetype=xml
autocmd BufNewFile,BufReadPost *.sln set filetype=xml

"autocmd vimenter * NERDTree"
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
