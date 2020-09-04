if exists('g:vscode')

else
  source $HOME/.config/nvim/plug-config/ale.vim
endif

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim

if exists('g:vscode')

else
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/airline.vim
  source $HOME/.config/nvim/plug-config/vim-rainbow.vim

  "source $HOME/.config/nvim/themes/onedark.vim
  source $HOME/.config/nvim/themes/material.vim
endif
