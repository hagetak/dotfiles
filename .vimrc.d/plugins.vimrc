
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim'
" コード補完
NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle "osyo-manga/vim-monster"

" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-rails'
" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-surround'
" NeoBundle 'modsound/gips-vim.git'


" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/html5.vim'
NeoBundle 'AtsushiM/search-parent.vim'
NeoBundle 'mojako/ref-sources.vim'
NeoBundle 'mustardamus/jqapi'
NeoBundle 'tokuhirom/jsref'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'airblade/vim-gitgutter'
set updatetime=150

NeoBundle 'neosnippet'
NeoBundle 'basyura/unite-rails'
NeoBundle 'ruby-matchit'
NeoBundle 'alpacatc/alpaca_tags'

NeoBundle 'scrooloose/syntastic'
let g:syntastic_mode_map = { 'mode': 'passive',
      \ 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
NeoBundle 'bronson/vim-trailing-whitespace'

NeoBundle 'Chiel92/vim-autoformat'

NeoBundle 'thoughtbot/vim-rspec'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

NeoBundle 'ngmy/vim-rubocop'
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

" カラースキーマ
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
