export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

# in case brew installed a newer version of python.
[[ -d "/usr/local/share/python" ]] && \
    export PATH=/usr/local/share/python:$PATH

# test brew exists
[[ -f "/usr/local/bin/brew" ]] && \
    export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
