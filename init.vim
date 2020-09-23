
source $HOME/.config/nvim/plug-config/ale.vim

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/vim-airline.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/vim-gutter.vim
source $HOME/.config/nvim/plug-config/git-messenger.vim
source $HOME/.config/nvim/plug-config/vim-startify.vim
source $HOME/.config/nvim/plug-config/coc-explorer.vim
source $HOME/.config/nvim/themes/vim-material.vim

let g:OmniSharp_highlight_groups = {
\ 'Comment': 'NonText',
\ 'FieldName' : 0,
\ 'LocalName' : 0,
\ 'XmlDocCommentName': 'Identifier',
\ 'XmlDocCommentText': 'NonText'
\}

noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

nnoremap <Leader>bn :bn<CR>
nnoremap  <Leader>bp :bp<CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv
