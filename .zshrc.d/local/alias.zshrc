# 
alias show-color='for c in {0..255}; do printf "\033[48;5;${c}m%8d\033[m" $c; done; echo'
alias ctags="`brew --prefix`/bin/ctags"
alias ctags-php='ctags -R . --langmap=PHP:.php.inc --php-kinds=c+f+d'
alias ctags-ruby='ctags --langmap=RUBY:.rb --exclude="*.js"  --exclude=".git*" -R .'
alias update-ssh-config="cat ~/.ssh/conf.d/common-config/* ~/.ssh/conf.d/*.conf > ~/.ssh/config"
alias nkfja=' nkf -s --overwrite '
alias wdir='mkdir ~/default/work/`date "+%Y%m%d"` & cd ~/default/work/`date +"%Y%m%d"`'
alias zip_with_password='zip -e -r'
alias update-ssh-config="find ~/Dropbox/Applications/dotfiles/.ssh/conf.d -type file | xargs -I{} cat {} > ~/Dropbox/Applications/dotfiles/.ssh/config"
alias remove-bom="nkf --overwrite --oc=UTF-8"
alias dc_build_up='docker-compose rm -fv && docker-compose build && docker-compose up'
alias rm_docker_images='docker images -qf dangling=true | xargs docker rmi'
alias rm_docker_containers='docker ps -aqf status=exited | xargs docker rm -v' # rm with volumes
alias rm_docker_volumes='docker volume ls -qf dangling=true | xargs docker volume rm'
alias rm_docker_compose_containers='docker-compose rm -fv'

alias gdiff='git status -s | awk {'\'' print $1 '\''} | peco | xargs git diff'
alias gadd='git status -s | awk {'\'' print $1 '\''} | peco | xargs git add'
alias gs="git status -sb"
a() { git add "$@"; git status -sb }
alias ci="git commit -v"
alias gch="git checkout "
alias gp="git pull "
alias gd="git diff "
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

function sshc() {
  conf=${@:-"$HOME/.ssh/config"}
  if [ ! -e $conf ]; then
    echo "'./"$conf"' is not found"
    return
  fi
  local host=$(grep 'Host ' $conf | awk '{print $2}' | peco)
  if [ -n "$host" ]; then
      echo "ssh -F $conf $host"
      ssh -v -F $conf $host
  fi
}

alias s="git status"
