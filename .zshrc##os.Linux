# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zsh completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
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

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export ANTIBODY_HOME=~/Library/antibody
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
source ~/.zsh_plugins.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
# export PATH="$HOME/.pyenv/bin:$PATH"
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}

autoload -U +X bashcompinit && bashcompinit

bindkey -M viins 'jj' vi-cmd-mode
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey "^P" fuzzy-search-and-edit 

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
source ~/.p10.zsh
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/Users/bipinlekhak/Library/Python/3.10/bin:$PATH"
fpath+=~/.zfunc
autoload -Uz compinit && compinit
export PATH="$HOME/.local/bin:$PATH"
export ZSH_COLORIZE_TOOL=chroma
#export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}
#export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/bl1282/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/bl1282/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/bl1282/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/bl1282/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/bl1282/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/bl1282/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<


PATH="/home/bl1282/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/bl1282/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/bl1282/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/bl1282/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/bl1282/perl5"; export PERL_MM_OPT;

source ~/.profile
source ~/.zprofile
FZ_HISTORY_CD_CMD=zshz

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

