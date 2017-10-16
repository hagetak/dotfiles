# zshrc
########################################
export PATH=$PATH:~/.selenium-drivers/

# for image image magick
# installed to brew install imagemagick
export MAGICK_HOME=/usr/local/Cellar/imagemagick/6.9.3-7/bin 
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export PKG_CONFIG_PATH="$MAGICK_HOME/lib/pkgconfig"

# 
export GOPATH=$HOME/go/third-party:$HOME/go/my-project
export PATH=$HOME/go/third-party/bin:$HOME/go/my-project/bin:$PATH # binをPATHに追加するのも忘れずに

# pgsql
LD_LIBRARY_PATH=/usr/local/pgsql/lib
export LD_LIBRARY_PATH
PATH=/usr/local/pgsql/bin:$PATH
export PATH

# for rvm
export PATH=$HOME/.rvm/rubies/default:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source ~/.rvm/scripts/rvm 

# MySQL Path Setting
export PATH=$PATH:/usr/local/mysql/bin 

# for composer
export PATH="$PATH:$HOME/.composer/vendor/bin"