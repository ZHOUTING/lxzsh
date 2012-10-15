export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [[ -f "/usr/local/bin/brew" ]]; then
    if [[ -d "$(brew --prefix coreutils)" ]]; then
        export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
    fi

    if [[ -d "$(brew --prefix python)" ]]; then
        export PATH=$(brew --prefix python)/bin:$PATH
    fi

    if [[ -d "$(brew --prefix ruby)" ]]; then
        export PATH=$(brew --prefix ruby)/bin:$PATH
    fi
fi

# test android sdk
if [[ -d "$HOME/tools/android/platform-tools" ]]; then
    export PATH=$HOME/tools/android/platform-tools:$HOME/tools/android/platform:$HOME/tools/android/tools:$PATH
fi

# test user bin
if [[ -d "$HOME/bin" ]]; then
    export PATH=$HOME/bin:$PATH
fi
