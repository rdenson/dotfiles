export GOPATH=$HOME/repos/go
export N_PREFIX=$HOME/n_mgr
export PGPASSFILE=$HOME/.pgpass

# --- Git Things --- #
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh/functions $fpath)
setopt prompt_subst
. ~/.git-prompt.sh

# --- FZF things --- #
alias -g qs="~/bin/qs"

PROMPT='%F{91}%y%f:%F{green}%3~%f%F{cyan}$(__git_ps1)%f ▶︎ '

autoload -U compinit && compinit
zmodload -i zsh/complist
#autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/bin/terraform terraform
