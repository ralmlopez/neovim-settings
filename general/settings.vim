syntax enable                           " Enables syntax highlighing

let g:mapleader ="\<Space>"
set hidden                              " Required to keep multiple buffers open
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object
set formatoptions-=cro                  " Stop newline continuation of comments
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
"set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set scrolloff=3                         " Leave space when using zt, zb commands
set incsearch
set autoread
set noswapfile
hi ColorColumn ctermbg=8 guibg=DarkGray " Set color
setlocal colorcolumn=120                " Show a color block for 120th column

let $RTP=split(&runtimepath, ',')[0]    " Set variable to access nvim configuration path easily
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ " Chars to use to show non printable characters
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
