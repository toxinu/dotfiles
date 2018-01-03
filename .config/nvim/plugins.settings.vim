"""""""""""""""
" Vim-Airline "
"""""""""""""""
let g:airline_theme= "sol"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_x = '%{&filetype}'
let g:airline_section_y = '%#__accent_bold#%{LineNoIndicator()}%#__restore__#'
let g:airline_section_z = '%2c'

""""""""
" Jedi "
""""""""
" let g:jedi#completions_enabled = 0 " Enable completions
" let g:jedi#show_call_signatures = 0 " Show signatures call 
" let g:jedi#smart_auto_mappings = 0 " Disable auto 'import' keyword
" let g:jedi#auto_vim_configuration = 0 " Disable auto select of first entry

""""""""""""
" NERDTree "
""""""""""""
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.pyc$', '__pycache__$', '\.cache$']

""""""""""
" Ctrl-p "
""""""""""
let g:loaded_ctrlp = 0 " Enable ctrl-p
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(([\/]\.(git|hg|svn)|node_modules|vendor)$|__pycache__)',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ 'link': '',
  \ }
let g:ctrlp_max_files=0     " do not limit the number of searchable files
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_match_window = 'bottom,order:btt,max:10,results:10'

""""""""""""
" Deoplete "
""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 0
let g:deoplete#max_list = 50

"""""""""""""
" Syntastic "
"""""""""""""
let g:syntastic_python_checkers = ['flake8', 'python']

"""""""""""""""
" IndentGuide "
"""""""""""""""
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236

""""""""
" Rust "
""""""""
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['rustc', 'cargo']

""""""""""
" Python "
""""""""""
let g:pymode = 1
let g:pymode_virtualenv = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_motion = 0
let g:pymode_folding = 0
let g:pymode_lint_unmodified = 0
let g:pymode_lint_message = 1
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']

map <C-Y> :call yapf#YAPF()<cr>
imap <C-Y> <c-o>:call yapf#YAPF()<cr>

"""""""
" Fzf "
"""""""
map <C-p> :Files<CR>
map <C-b> :Buffers<CR>

"""""""
" Ale "
"""""""
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_open_list = 1

"""""""""""
" Ack.vim "
"""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

""""""
" Go "
""""""
let g:go_fmt_command = "goimports"
