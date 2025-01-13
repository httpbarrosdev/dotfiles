#------------------------------------------------------------
# if running bash
#------------------------------------------------------------
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    [[ -f $HOME/.bashrc ]] && source $HOME/.bashrc
fi

[[ -d $HOME/.local/bin ]] && export PATH="$HOME/.local/bin:$PATH"
[[ -d $HOME/.local/racket/bin ]] && export PATH="$HOME/.local/racket/bin:$PATH"
[[ -d $HOME/.local/go ]] && export PATH="$HOME/.local/go/bin:$PATH"
[[ -d $HOME/.cargo/bin ]] && export PATH="$HOME/.cargo/bin:$PATH"
[[ -d $HOME/.rvm/bin ]] && export PATH="$HOME/.rvm/bin:$PATH"
[[ -d $HOME/.config/composer/vendor/bin ]] && export PATH="$HOME/.config/composer/vendor/bin:$PATH"
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
[[ -d $HOME/.rbenv/bin ]] && export PATH="$HOME/.rbenv/bin:$PATH"
[[ -d /opt/homebrew/opt/ruby/bin ]] && export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
[[ -d $HOME/.composer ]] && export PATH="$HOME/.composer/vendor/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
