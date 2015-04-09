export EDITOR="/usr/local/bin/mvim -f"

# Rails
alias rs="bundle exec rails server -p 3000 --bind 127.0.0.1"
alias rc="bundle exec rails c"
alias be="bundle exec"

# Misc projects
alias fs="/usr/local/bin/forego start"
alias ns="npm start"

# Git
alias push="git push"
alias pull="git pull --rebase"
alias master="git checkout master"
alias gs="git status"
alias gd="git diff"
alias gc="git commit -v"

# Vagrant
alias vs="vagrant status"
alias vup="vagrant up"
alias vh="vagrant halt"
alias vsu="vagrant suspend"
alias vd="vagrant destroy"
alias vssh="vagrant ssh"

# Misc
alias mvi="/usr/local/bin/mvim"
alias ll="ls -lah"

# Go
export GOPATH="$HOME/p/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

# supports 'g' command which autocompletes to github go src path
function g() { cd $GOPATH/src/github.com/$1 ; }
function __goto_gopath_completion()
{
  local word=${COMP_WORDS[COMP_CWORD]}
  local count=$(echo $GOPATH/src/github.com/ |wc -m)

  COMPREPLY=( $(compgen -S/ -d $GOPATH/src/github.com/$word | cut -b $count-) ) 
}
complete -o nospace -F __goto_gopath_completion g

export PATH="$HOME/.rbenv/bin:./node_modules/.bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if test -d ~/.nvm; then . ~/.nvm/nvm.sh; fi
