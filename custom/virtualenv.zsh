# source virtualenvwrapper.sh
if which virtualenvwrapper.sh 1>/dev/null; then
    source virtualenvwrapper.sh

    # Load virtualenvwrapper
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/workspace

    # make pip use the same directory for virtualenvs as virtualenvwrapper
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    export PIP_RESPECT_VIRTUALENV=true
fi

# use autoenv to autoload project virtualenv
if [[ -f "/usr/local/bin/brew" ]]; then
    if [[ -d "$(brew --prefix autoenv)" ]]; then
        source $(brew --prefix autoenv)/activate.sh
    fi
fi

# define auto_virtualenv to make autoenv better for virtualenv
function autoenv_virtualenv () {
    if which virtualenvwrapper.sh 1>/dev/null; then
        source virtualenvwrapper.sh
    else
        echo "ERROR: virtualenvwrapper not installed."
        exit $?
    fi

    if workon | grep -q "^$1$"; then
        workon $1
    else
        echo -n "$1 doesn't exist, creat now? [y/N] "
        read answer
        if [[ "$answer" == "y" ]]; then
            mkvirtualenv $1
            if [[ -e "requirements.txt" ]]; then
                pip install -U -r requirements.txt
            fi
        fi
    fi
}
