# source virtualenvwrapper.sh
if which virtualenvwrapper.sh &> /dev/null; then
    source virtualenvwrapper.sh
fi

# Load virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace

# make pip use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
