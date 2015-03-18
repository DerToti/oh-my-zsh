# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
#
# * The time (not the date)
# * The current directory
# * The Git branch and its 'dirty' state
# 
# Colors are at the top so you can mess with those separately if you like.
if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
DERTOTI_COLOR="%{$fg_bold[white]%}"
DERTOTI_USER_COLOR="%{$fg[$NCOLOR]%}"
DERTOTI_CONNECT_COLOR="%{$fg[green]%}"
DERTOTI_PC_COLOR="%{$fg[green]%}"
DERTOTI_DIR_COLOR="%{$fg[yellow]%}"
DERTOTI_TIME_COLOR="%{$fg[yellow]%}"
DERTOTI_GIT_BRACKET_COLOR="%{$fg[cyan]%}"
DERTOTI_GIT_BRANCH_COLOR="%{$fg[cyan]%}"
DERTOTI_GIT_CLEAN_COLOR="%{$fg[green]%}"
DERTOTI_GIT_DIRTY_COLOR="%{$fg[red]%}"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX=" $DERTOTI_GIT_BRACKET_COLOR($DERTOTI_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX="$DERTOTI_GIT_BRACKET_COLOR%)%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" $DERTOTI_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $DERTOTI_GIT_DIRTY_COLOR✗"

# Our elements:
UNUSED_THING="%(?, ,%{$fg[red]%}FAIL%{$reset_color%}
)"
DERTOTI_USER_="$DERTOTI_USER_COLOR%n$DERTOTI_CONNECT_COLOR@$DERTOTI_PC_COLOR%m%{$reset_color%}: "
DERTOTI_DIR_="$DERTOTI_DIR_COLOR%~\$(git_prompt_info) %{$reset_color%}"
DERTOTI_PROMPT="$DERTOTI_COLOR➜ %{$reset_color%}"
DERTOTI_TIME="%{$fg[green]%}[%*]%{$reset_color%}"

PROMPT="
$DERTOTI_USER_$DERTOTI_DIR_
%_$DERTOTI_PROMPT"

RPROMPT='$DERTOTI_TIME'
