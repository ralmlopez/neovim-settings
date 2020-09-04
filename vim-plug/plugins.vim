" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Change dates fast
    Plug 'tpope/vim-speeddating'
    " Convert binary, hex, etc..
    Plug 'glts/vim-radical'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Useful for React Commenting 
    Plug 'suy/vim-context-commentstring'
    " highlight all matches under cursor
    Plug 'RRethy/vim-illuminate'

    if exists('g:vscode')
      " Easy motion for VSCode
      Plug 'asvetliakov/vim-easymotion'
    else

    " Sneak
    Plug 'justinmk/vim-sneak'
    " Surround
    Plug 'tpope/vim-surround'
    " Files
    Plug 'tpope/vim-eunuch'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    Plug 'arcticicestudio/nord-vim'
    " Status Line
    Plug 'kevinhwang91/rnvimr'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Interactive code
    Plug 'metakirby5/codi.vim'
    " Better tabline
    Plug 'mg979/vim-xtabline'
    " undo time travel
    Plug 'mbbill/undotree'
    " Find and replace
    Plug 'ChristianChiarulli/far.vim'
    " Plug 'brooth/far.vim'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " live server
    Plug 'turbio/bracey.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " async tasks
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Swap windows
    Plug 'wesQ3/vim-windowswap'
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
    " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'
    " Better Whitespace
    Plug 'ntpeters/vim-better-whitespace'
    " Multiple Cursors
    " TODO add this back in change from C-n
    " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'moll/vim-bbye'


    " Intellisense like VSCode plugin
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

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
