" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  if exists('g:vscode')

  else

    " Intellisense like VSCode plugin
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Colorize matching pairs for '{','(', '[' 
    Plug 'frazrepo/vim-rainbow'

    " C#
    Plug 'OmniSharp/omnisharp-vim'

    " Check syntax
    Plug 'dense-analysis/ale'

    " Status footer
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Icons for various plug ins
    Plug 'ryanoasis/vim-devicons'
  
    " Theme
    Plug 'christianchiarulli/onedark.vim'
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }

  endif
  
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
