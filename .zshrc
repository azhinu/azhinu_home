# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# Aliases
alias cat=/usr/local/bin/lolcat
alias df='df -h'
alias ss='ss -pln'
alias ps='ps aux'
alias ls='ls -GFhl'
alias grep='grep --color=auto -a'
if [ -f /usr/bin/lolcat ] ||  [ -f /usr/local/bin/lolcat ] ; then
    alias cat='lolcat'
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(sheldon source)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source "${ZDOTDIR:-$HOME}/.sheldon/repos/github.com/sorin-ionescu/prezto/init.zsh"
source .fzf.zsh
#autoload -Uz compinit && compinit(( ! ${+functions[p10k]} )) || p10k finalize
p10k finalize
