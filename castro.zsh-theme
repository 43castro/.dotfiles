PROMPT="%(?:%{$fg_bold[white]%}%1{➜%} :%{$fg_bold[white]%}%1{➜%} ) %{$fg[white]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}git:(%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}) %{$fg[white]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[white]%})"
