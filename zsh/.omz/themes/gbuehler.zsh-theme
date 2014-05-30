PROMPT='%{$fg[white]%}[%{$fg[green]%}%*%{$fg[white]%}][%{$fg_bold[blue]%}%n%{$fg[white]%}@%{$fg_bold[blue]%}%m%{$fg[white]%}:%{$fg_bold[red]%}%2c%{$fg[white]%}] %{$fg_bold[green]%}%p%{$fg[cyan]%}%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$fg[white]%} %# '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
