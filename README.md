
## 概要


### インストールについて

```
# backup
if [ -f $HOME/.vimrc ]; then mv $HOME/.vimrc{,.org};fi
if [ -f $HOME/.zshrc ]; then mv $HOME/.zshrc{,.org};fi

# fetch
cd anywhere
git clone https://github.com/hagetak/dotfiles && cd dotfiles

# create synbolic link 
ln -s .zshrc ~/.zshrc
ln -s .zshrc.d ~/.zshrc.d
ln -s .vimrc ~/.vimrc
ln -s .vimrc.d ~/.vimrc.d
```

### 構成内容

#### .vimrc

ファイル・ディレクトリ構成については下記の通り。雑に分割してみたが、これからベストな形を模索していく。

```
.vimrc ・・・ 読み込みのみ行う 
.vimrc.d ・・・ 以下のディレクトリ内に設定ファイルを詰め込む
├── basic.vimrc
├── color.vimrc
├── func.vimrc
├── plug-neosnipetts.vimrc
├── plug-unite.vimrc
└── plugins.vimrc
```

#### .zshrc

こちらも取り急ぎファイル分割をしてみた。まだまだ模索中である。

`local` / `secret` の扱いをどうするか。

```
.zshrc
.zshrc.d
├── common
│   └── alias.zshrc
├── local
│   ├── alias.zshrc
│   ├── env.db.zshrc
│   └── env.path.zshrc
└── secret
```
