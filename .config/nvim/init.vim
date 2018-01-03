source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plugins.settings.vim
source ~/.config/nvim/mappings.vim

"""""""""""
" General "
"""""""""""
let g:python_host_prog = $HOME.'/.virtualenvs/neovim-legacy/bin/python'
let g:python3_host_prog = $HOME.'/.virtualenvs/neovim/bin/python'
set clipboard+=unnamedplus
set autoread 
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
set omnifunc=syntaxcomplete#Complete
" colorscheme default 
colorscheme minimal 

""""""""""
" Editor "
""""""""""
set number
set colorcolumn=0
set nowrap
highlight Pmenu guibg=brown gui=bold
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
highlight Pmenu ctermbg=239 ctermfg=white
set completeopt+=noinsert

"""""""""
" Color "
"""""""""
" Selected text in visual mode
hi Visual ctermbg=24
hi SpellBad ctermfg=237 ctermbg=226
hi SpellCap ctermfg=237 ctermbg=208

