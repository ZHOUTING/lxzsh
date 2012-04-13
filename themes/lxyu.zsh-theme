local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# One line theme
#PROMPT='%{$fg[green]%}%c \
#$(git_prompt_info)\
#%{$fg[red]%}%(!.#.»)%{$reset_color%} '
#PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
#RPS1='%{$fg[blue]%}%~%{$reset_color%} ${return_code} '
#
#ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}| %{$fg[yellow]%}("
#ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$fg[yellow]%}"
##ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN=""

# Two line theme
PROMPT='%{$fg[cyan]%}┌[%{$fg_bold[white]%}%n%{$reset_color%}%{$fg[cyan]%}☮%{$fg_bold[white]%}%M%{$reset_color%}%{$fg[cyan]%}]%{$fg[white]%}-%{$fg[cyan]%}(%{$fg_bold[white]%}%~%{$reset_color%}%{$fg[cyan]%})$(git_prompt_info)
└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="-[%{$reset_color%}%{$fg[white]%}%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[cyan]%}]-"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
