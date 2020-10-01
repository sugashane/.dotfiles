    syn on
    colorscheme monokai
    set number
    set hidden
    set smartcase
    set mouse=a
    set clipboard=unnamedplus
    syntax enable
    let g:solarized_termtrans=1
    set textwidth=0
    set wrapmargin=0
    set wrap
    set linebreak
    set nolist  " list disables linebreak
    set display=lastline
    "nerdtree
    map <C-n> :NERDTreeToggle<CR>
    " map \wn to show whitespace
    map <Leader>wn /\s\+$/<CR>
    set formatoptions=l
    " let's set text width to 80 characters
    set textwidth=80
    " this is disabled when set paste is set
    "http://vim.1045645.n5.nabble.com/Problems-with-visual-word-wrap-td1179098.html
    set nocompatible
    set scrolloff=3     " keep 3 lines when scrolling
    set showcmd         " display incomplete commands
    set hlsearch        " highlight searches
    set incsearch       " do incremental searching
    set ruler           " show the cursor position all the time
    set ignorecase      " ignore case when searching
    set title           " show title in console title bar
    set ttyfast         " smoother changes
    set modeline        " last lines in document sets vim mode
    set modelines=3     " number lines checked for modelines
    set shortmess=atI   " Abbreviate messages
    set nostartofline   " don't jump to first character when paging
    set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
    set viminfo='20,<50,s10,h
    set backspace=2         " full backspacing capabilities

    " Shortcut to rapidly toggle `set list`
    nmap <leader>iul :set list!<CR>
     
    " Use the same symbols as TextMate for tabstops and EOLs
    set listchars=tab:▸\ ,eol:¬

    " EDIT EDIT vim jedi "
    " don't turn on jedi by default
    "let g:jedi#auto_initialization = 1
    let g:jedi#popup_on_dot = 0
    let g:jedi#use_tabs_not_buffers = 1
    "set this for indent freaking out
    filetype plugin indent on
    " show existing tab with 4 spaces width
    set tabstop=4
    " " when indenting with '>', use 4 spaces width
    set shiftwidth=4
    " " On pressing tab, insert 4 spaces
    set expandtab
    """ yaml plugin
    au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/plugin/yaml.vim
    " Python plugin
    let python_highlight_all = 1
    " vim airline stuff
    " https://github.com/bluz71/vim-moonfly-colors
    let g:airline_theme = 'night_owl'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    set laststatus=2
    let g:airline_powerline_fonts = 1
    set t_Co=256
    "" use plug installer
    """ PLUG
    call plug#begin('~/.vim/plugged')

    " Make sure you use single quotes
    Plug 'hynek/vim-python-pep8-indent'
    Plug 'https://github.com/hdima/python-syntax'
    Plug 'https://github.com/ingydotnet/yaml-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'godlygeek/tabular'
    Plug 'altercation/vim-colors-solarized'
    Plug 'tpope/vim-fugitive'
    Plug 'Glench/Vim-Jinja2-Syntax'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'wellle/tmux-complete.vim'
    Plug 'tpope/vim-obsession'
    Plug 'kien/ctrlp.vim'
    Plug 'powerline/powerline'
    Plug 'scrooloose/nerdtree'
    Plug 'davidhalter/jedi-vim'
    Plug 'bluz71/vim-moonfly-colors'
    Plug 'pearofducks/ansible-vim'
   call plug#end()
    "" EDIT EDIT enable moonlight / moonfly
    "colorscheme moonfly"
let g:moonflyCursorLineNr = 0
" use 256bit terminal colors
if exists('+termguicolors')
    set termguicolors
endif
" make hightlighted/selected text white
"hi Visual term=reverse cterm=reverse guibg=Grey
"" EDIT EDIT force comments to be darkgreen
"" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
hi comment guifg=#008700
"" EDIT EDIT make comments italics
"" ONLY ENABLE THE BELOW LINE IF YOU USE CUSTOM TERMINFO (RECOMMENDED)
"" https://hobo.house/2017/07/17/using-italics-with-vim-in-your-terminal/
""highlight Comment cterm=italic
"" EDIT EDIT
"" ansible vim settings
"" https://github.com/pearofducks/ansible-vim
let g:ansible_unindent_after_newline = 1
let g:ansible_extra_syntaxes = "sh.vim ruby.vim"
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1
