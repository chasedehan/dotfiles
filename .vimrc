" Cursor shape: block in normal, beam in insert
let &t_SI = "\e[5 q"   " Insert mode - beam
let &t_SR = "\e[3 q"   " Replace mode - underline
let &t_EI = "\e[1 q"   " Normal mode - block
" Remove delay on esc
set ttimeoutlen=5
set timeoutlen=1000

" Reset cursor on startup
autocmd VimEnter * silent !echo -ne '\e[1 q'
" Reset cursor when leaving vim
autocmd VimLeave * silent !echo -ne '\e[5 q'

" Syntax highlighting
syntax on
set number              " Line numbers
" set relativenumber      " Relative line numbers
set cursorline          " Highlight current line
set showmatch           " Highlight matching brackets
filetype plugin indent on  " Auto-detect filetype for indentation

" Set colorschemes
colorscheme desert      " Good dark theme (built-in)
set termguicolors       " Use 24-bit colors (iTerm2 supports this)
set background=dark
