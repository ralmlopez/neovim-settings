if !exists('g:vscode')
  source $HOME/.config/nvim/plug-config/ale.vim
endif

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/plug-config/quickscope.vim

if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
else
  source $HOME/.config/nvim/keys/vim-which-key.vim
  source $HOME/.config/nvim/plug-config/vim-rainbow.vim
  source $HOME/.config/nvim/plug-config/vim-airline.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/vim-polyglot.vim

  "source $HOME/.config/nvim/themes/onedark.vim
  "source $HOME/.config/nvim/themes/material.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
