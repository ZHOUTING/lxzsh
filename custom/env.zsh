# basic env settings for OSX
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim
export CLICOLOR=1

# use autoenv to autoload project virtualenv
if [[ -f "/usr/local/bin/brew" ]]; then
    if [[ -d "$(brew --prefix autoenv)" ]]; then
        source $(brew --prefix autoenv)/activate.sh
    fi
elif [[ -d "$HOME/.autoenv" ]]; then
    source "$HOME/.autoenv/activate.sh"
fi

# make man colorful
function man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# auto verify add config git user name and email
function git_user_verify() {
    if [[ -d ".git" ]]; then
        if ! git config --get user.name 1>/dev/null; then
            echo -n "Git user.name not configured, please enter your name: "
            read name
            if [[ -n $name ]]; then
                git config user.name $name
            else
                echo "name empty, not configured."
            fi
        fi

        if ! git config --get user.email 1>/dev/null; then
            echo -n "Git user.email not configured, please enter your email: "
            read email
            if [[ -n $email ]]; then
                git config user.email $email
            else
                echo "email empty, not configured."
            fi
        fi
    fi
}

function cd() {
    if builtin cd "$@"; then
        autoenv_init
        git_user_verify
        return 0
    else
        return $?
    fi
}
