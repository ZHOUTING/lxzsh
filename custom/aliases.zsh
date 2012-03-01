alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias l=ls
alias la='ls -ahlF'
alias ll='ls -hl'

alias rm="rm -I"

alias df='df -h'
alias lg='ll | grep'
alias pg='ps aux | grep'

alias tmux='tmux -2'
alias tmuxa='tmux a || tmux'

alias rmds='find . -name ".DS_Store" -exec rm -f "{}" \;'
alias rmpyc='find . -name "*.pyc" -exec rm -f "{}" \;'

alias s='pkill -f "ssh -Nfn -D 7070"; ssh -Nfn -D 7070 elemevps 1>/dev/null 2>&1'
alias p='cd ~/tools/goagent/; python proxy.py &'
alias vpn='cd ~/tools/sshuttle; bash sshuttle --dns -vvr elemevps 0/0'
alias wk='python2.6 ~/tools/wiki/wikiserver.py &'
alias y='youtube-dl -c -l'

alias xld='xl download --continue --delete'
alias xll='xl list --speed --progress'

alias cdele='cd ~/workspace/eleme/trunk'
alias cdsys='workon sysenv; cd ~/workspace/eleme/elemesys'
alias cddj='workon djangoenv; cd ~/workspace/eleme/elemedjango'
alias cdpy='workon pyramidenv; cd ~/workspace/eleme/elemepyramid/'
alias cdze='workon zeusenv; cd ~/workspace/eleme/zeus/'
