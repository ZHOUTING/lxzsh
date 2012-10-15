alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -ahlF'

alias rm="rm -I"

alias df='df -h'
alias lg='ll | grep'
alias pg='ps aux | grep'

alias tmux='tmux -2'
alias tmuxa='tmux a || tmux'

alias rmds='find . -name ".DS_Store" -delete'
alias rmpyc='find . -name "*.pyc" -delete'

alias s='pkill -f "ssh -Nfn -D 7070"; nohup ssh -Nfn -D 7070 elemevps 1>/dev/null 2>&1'
alias wk='pkill -f "wikiserver.py"; nohup python2.6 ~/tools/wiki/wikiserver.py 1>/dev/null 2>&1 &'
alias p='pkill -f "python proxy.py"; cd ~/tools/goagent/local/; nohup python proxy.py 1>/dev/null 2>&1 &'
alias y='youtube-dl -c -l'

alias xld='xl download --continue --delete --tool aria2'
alias xll='xl list --speed --progress'

alias cdele='workon elemeenv; cd ~/workspace/eleme/trunk;'
alias cddj='workon djangoenv; cd ~/workspace/eleme/elemedjango'
alias cdpr='workon nmenv; cd ~/workspace/eleme/nevermore/'
alias cdpy='workon pyenv; cd ~/workspace/source/'
alias cdze='workon zeusenv; cd ~/workspace/eleme/zeus/'
alias cdma='workon mangixenv; cd ~/workspace/eleme/mangix/'
alias cdme='workon mechanizebotenv; cd ~/workspace/eleme/mechanizebot/'
alias cdes='workon earthshakerenv; cd ~/workspace/eleme/earthshaker/'

alias redis-server='redis-server /usr/local/etc/redis.conf'
