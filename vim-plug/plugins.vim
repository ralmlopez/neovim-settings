" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Status footer
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
  
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Have the file system follow you around
    Plug 'airblade/vim-rooter'

    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'

    " For autoread to work properly - used by git plugins too
    Plug 'tmux-plugins/vim-tmux-focus-events'   

    " Intellisense like VSCode plugin
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " C#
    Plug 'OmniSharp/omnisharp-vim'

    " Check syntax
    Plug 'dense-analysis/ale'

    " Start Screen
    Plug 'mhinz/vim-startify'

    " Themes
    Plug 'hzchirs/vim-material'
call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
