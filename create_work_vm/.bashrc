# pip completion
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# fabric completion
_fab_completion()
{
    COMPREPLY=()
    local cur tasks
    tasks=$(fab --shortlist 2>/dev/null)
    _get_comp_words_by_ref cur
    COMPREPLY=( $(compgen -W "${tasks}" -- ${cur}) )
}
complete -F _fab_completion fab

export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME


# django aliases
alias p='python manage.py shell'
alias rs='python manage.py runserver'
alias cs='python manage.py collectstatic'
alias m="python manage.py"

#projects aliases
alias smart='workon smart'
alias fs='workon fs'

# git alias

function current_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1 /'
}

alias gr='git rm $(git ls-files --deleted)'
alias ga='git add .'
alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias gam='git commit --amend'
alias gp='git push origin $(current_branch)'
alias gcm='git commit -m'

export DJANGO_CONF=dev
export UNO_PATH=/usr/lib/libreoffice/program


export SMARTPOST_SETTINGS=~/Envs/smart/src/settings/omjan.py
