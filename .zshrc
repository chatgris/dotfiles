#!/bin/zsh
for file in $HOME/.zsh/rc.d/*; do
    source $file
done

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
