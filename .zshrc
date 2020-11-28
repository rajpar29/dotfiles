# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/cipher/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/home/cipher/scripts"
export PATH="$PATH:/home/cipher/development/graalvm/bin"
export PATH="$PATH:/home/cipher/development/flutter/bin"
export PATH="$PATH:/home/cipher/go/bin"
export PATH="$PATH:/home/cipher/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export GRAALVM_HOME=/home/cipher/development/graalvm
export DISPLAY=:0
export EDITOR=vim

export GNC_REGISTRATION_PASS="DadaBhagwan1234"

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


source ~/.dev_env

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
source /usr/share/nvm/init-nvm.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
