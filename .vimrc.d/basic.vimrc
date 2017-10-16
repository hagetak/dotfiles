""""""""""""""""""""""""""""
" 標準設定
""""""""""""""""""""""""""""""
syntax on
set autoread "編集外でファイルの変更があったとき、自動で更新
set number "行数を表示
set title "タイトルを表示
set nocompatible "現在のvimのデフォルト設定で開く。
set autoindent
set modifiable
set write
set spell
set t_Co=256
set backspace=indent,eol,start

highlight Normal ctermbg=none

set backup "バックアップをとる。
set backupdir=/tmp "バックアップファイルの作成場所を指定

set history=50 "コロンコマンドの記録数
set hlsearch "検索パターンマッチをハイライト
set incsearch "検索文字を打ち込むと即検索する
set ignorecase "大文字と小文字を区別しない
set showcmd "コマンドをステータス行に表示
set showmatch "対応する括弧を強調
highlight Comment ctermfg=LightCyan "コメントを水色にする。

""Encode
set encoding=UTF-8 "文字コードをUTF-8にする
set fileencoding=UTF-8 "文字コードをUTF-8にする
set termencoding=UTF-8 "文字コードをUTF-8にする
""File
set hidden "ファイル変更中でも他のファイルを開けるようにする
set autoread "ファイル内容が変更されると自動読み込みする
""Display
set smartindent
set background=dark

" 補完ウィンドウの設定
set completeopt=menuone

" 補完ウィンドウの設定
set completeopt=menuone

" auto-ctagsを使ってファイル保存時にtagsファイルを更新
let g:auto_ctags = 1

" Auto format
let g:formatterpath = ['/Users/k_matsushima/.rvm/gems/ruby-2.3.1/bin/ruby-beautify']
noremap <F3> :Autoformat<CR>
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1

highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4

" indent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" ウィンドウの分割設定
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>

" リロード後に戻ってくるアプリ 変更してください
let g:returnApp = 'terminal'
