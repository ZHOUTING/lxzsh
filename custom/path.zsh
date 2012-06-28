export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# in case brew installed a newer version of python.
[[ -d "/usr/local/share/python" ]] && \
    export PATH=/usr/local/share/python:$PATH

# test brew exists
[[ -f "/usr/local/bin/brew" ]] && \
    export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

# test android sdk
[[ -d "$HOME/tools/android/platform-tools" ]] && \
    export PATH=$HOME/tools/android/platform-tools:$HOME/tools/android/platform:$HOME/tools/android/tools:$PATH

# test user bin
[[ -d "$HOME/bin" ]] && export PATH=$HOME/bin:$PATH
