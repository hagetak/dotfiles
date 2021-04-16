
alias ll="ls -al"
alias javac='javac -J-Dfile.encoding=UTF-8'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'
alias ds='docker-sync start && docker-compose -f docker-compose.yml -f docker-compose-sync.yml up'

# git
alias gs='gs'
