set nocompatible

set runtimepath+=/home/toxinu/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state($HOME.'/.cache/dein')
  call dein#begin($HOME.'/.cache/dein')
  call dein#add($HOME.'/.cache/dein/repos/github.com/Shougo/dein.vim')

  " All
  " call dein#add('rhysd/committia.vim')
  " call dein#add('vim-syntastic/syntastic')
  " call dein#add('ervandew/supertab')
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('nathanaelkane/vim-indent-guides')
  " call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('haya14busa/dein-command.vim') 
  call dein#add('drzel/vim-line-no-indicator')
  call dein#add('itmammoth/doorboy.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('w0rp/ale')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('tpope/vim-commentary')
  call dein#add('scrooloose/nerdtree')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('majutsushi/tagbar')
  call dein#add('mhinz/vim-startify')
  call dein#add('mileszs/ack.vim')

  " Python
  " call dein#add('davidhalter/jedi-vim')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('python-mode/python-mode')
  call dein#add('google/yapf', { 'rtp': 'plugins/vim', 'on_ft': 'python' }) 

  " Go
  call dein#add('fatih/vim-go')
  call dein#add('zchee/deoplete-go')

  " Rust
  call dein#add('rust-lang/rust.vim')

  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
