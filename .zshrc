export GOPATH=$HOME/repos/go
export N_PREFIX=$HOME/n_mgr
export PATH="/usr/local/bin:${PATH}"

setopt prompt_subst
. ~/.git-prompt.sh

# --- FZF things ---
alias -g qs="~/bin/qs"
# ---

PROMPT='%F{91}%y%f:%F{green}%3~%f%F{cyan}$(__git_ps1)%f ▶︎ '
