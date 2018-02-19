TMUX_SESSION_NAME=$(tmux display-message -p '#S')

if [ -v $TMUX ]; then
	ret_status="%{$fg_bold[green]%}<%n@%m>%{$fg_bold[red]%}"
else
	ret_status="%{$fg_bold[green]%}<$TMUX_SESSION_NAME>%}"
fi
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}%{$fg[yellow]%}*%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
