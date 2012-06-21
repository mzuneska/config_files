export PATH="/usr/local/git/bin:/usr/local/mysql/bin:$PATH"
export EDITOR='mate -w'

function tree {
  ruby ~/dev/devtools/tree/tree.sh $*
}
 
function pair {
  ruby ~/dev/devtools/pair.rb $*
}

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\u:\w\[\033[0;33m\]$(parse_git_branch)\[\e[0m\]$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.