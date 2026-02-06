# --- RUN CMDS --- #
# ~~~~~~~~~~~~~~~~ #
alias battery="~/bin/battery"
alias datef="~/bin/datef"
alias epochget="~/bin/epochget"
alias epochconv="~/bin/epochconv"
alias ll="ls -ahl"
alias npmlist="npm list -g --depth 0"

# -- gcloud things -- #
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

# -- git things -- #
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh/functions $fpath)
setopt prompt_subst
. ~/.git-prompt.sh

# -- fzf things -- #
alias -g query="~/bin/query"

# -- pyenv (python) -- #
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

PROMPT='%F{91}%y%f:%F{green}%3~%f%F{cyan}$(__git_ps1)%f ▶︎ '

autoload -U compinit && compinit
zmodload -i zsh/complist
#autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/bin/terraform terraform
