#!/bin/zsh
for file in $HOME/.zsh/rc.d/*; do
    source $file
done

setopt prompt_subst
PROMPT='%F{white}%n@%m %c${vcs_info_msg_0_}%F{white} % %{$reset_color%}'
