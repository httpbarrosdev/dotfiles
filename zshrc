date

if [ -x "$(command -v fortune)" ]; then fortune | `ls /usr/games/cow* | 
    shuf -n 1` -f `ls /usr/share/cowsay/cows/ | shuf -n 1`
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# You can set one of the optional three formats: 
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" or set a custom format using 
# the strftime function format specifications, see 'man strftime' for 
# details.
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
plugins=(git history emoji zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#------------------------------------------------------------- History
#-------------------------------------------------------------

export HISTIGNORE="&:bg:fg:ll:h" export HISTCONTROL=ignoredups export 
HOSTFILE=$HOME/.hosts # Put a list of remote hosts in ~/.hosts

#------------------------------------------------------------- Tailoring 
# 'less'
#-------------------------------------------------------------

alias more='less' export PAGER=less
# export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
                # Use this if lesspipe.sh exists.
export LESS='-i -N -w -z-4 -g -e -M -X -F -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m' export LESS_TERMCAP_md=$'\E[01;31m' 
export LESS_TERMCAP_me=$'\E[0m' export LESS_TERMCAP_se=$'\E[0m' export 
LESS_TERMCAP_so=$'\E[01;44;33m' export LESS_TERMCAP_ue=$'\E[0m' export 
LESS_TERMCAP_us=$'\E[01;32m'

# You may need to manually set your language environment
export LANG=en_US.UTF-8 export EDITOR='vim'

# Load aliases
[[ -f $HOME/.aliases ]] && source $HOME/.aliases

# Run rbenv
[ -x "$(command -v rbenv)" ] && eval "$(rbenv init - zsh)"

# Run pyenv
[ -x "$(command -v pyenv)" ] && eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
