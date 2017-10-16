# 
alias show-color='for c in {0..255}; do printf "\033[48;5;${c}m%8d\033[m" $c; done; echo'
alias ctags="`brew --prefix`/bin/ctags"
alias ctags-php='ctags -R . --langmap=PHP:.php.inc --php-kinds=c+f+d'
alias ctags-ruby='ctags --langmap=RUBY:.rb --exclude="*.js"  --exclude=".git*" -R .'
alias update-ssh-config="cat ~/.ssh/conf.d/common-config/* ~/.ssh/conf.d/*.conf > ~/.ssh/config"
alias nkfja=' nkf -s --overwrite '
alias wdir='mkdir ~/default/work/`date "+%Y%m%d"` & cd ~/default/work/`date +"%Y%m%d"`'
alias zip_with_password='zip -e -r'
