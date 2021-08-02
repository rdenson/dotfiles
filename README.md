# Dotfiles and Stubbs

A brief collection artifacts to help setup an environment.

## Git
CLI completion
you need zsh wrapper + bash completion script :
```sh
# move .zsh completion script to the "zsh" directory as "_git"
mv .git-completion.zsh ~/.zsh/functions/_git

# in .zshrc:
fpath=(~/.zsh/functions $fpath)
setopt prompt_subst
# ...
autoload -U compinit && compinit
zmodload -i zsh/complist
```
_it might be helpful to run: `rm -f ~/.zcompdump; compinit` after file moves and zshrc setup_

_reference: https://github.com/git/git/tree/master/contrib/completion_

## Vi / Vim
vi config  - http://public.dhe.ibm.com/software/dw/aix/sample.exrc
vim config - http://public.dhe.ibm.com/software/dw/aix/sample.vimrc
### Colors
* https://github.com/AlessandroYorba/Sierra
* https://github.com/glepnir/oceanic-material
* https://github.com/junegunn/seoul256.vim

## Tools

| Name | Link |
| :--- | ---: |
| bat | https://github.com/sharkdp/bat |
| fzf | https://github.com/junegunn/fzf |
| jq | https://stedolan.github.io/jq/ |
| ripgrep | https://github.com/BurntSushi/ripgrep |
