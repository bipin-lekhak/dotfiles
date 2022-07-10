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
setopt autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bipin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export ANTIBODY_HOME=~/Libary/antibody
source ~/.zsh_plugins.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}

source /home/bipin/.config/broot/launcher/bash/br
alias icat="kitty +kitten icat"

eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
eval "$(register-python-argcomplete pipx)"

autoload -U +X bashcompinit && bashcompinit

bindkey -M viins 'jj' vi-cmd-mode
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey "^P" fuzzy-search-and-edit 

# Created by `pipx` on 2021-12-05 17:02:49
export PATH="$PATH:/home/bipin/.local/bin"
eval "$(register-python-argcomplete pipx)"
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
source ~/.p10.zsh
