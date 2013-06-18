#!/bin/zsh
for file in $HOME/.zsh/rc.d/*; do
    source $file
done

setopt prompt_subst
PROMPT='%F{white}%n@%m %c${vcs_info_msg_0_}%F{white} % %{$reset_color%}'

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
[[ -s /usr/local/share/chruby/ ]] && source /usr/local/share/chruby/chruby.sh && chruby 2.0.0-p195
