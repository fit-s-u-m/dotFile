# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh//.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
~/.local/bin/cowsay -t "Hello Fitsum"
eval "$(zellij setup --generate-auto-start zsh)"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh//.p10k.zsh.
[[ ! -f ~/.config/zsh//.p10k.zsh ]] || source ~/.config/zsh//.p10k.zsh

lf() {
    export LF_CD_FILE=/var/tmp/.lfcd-$$
    command lf $@
    if [ -s "$LF_CD_FILE" ]; then
        local DIR="$(realpath "$(cat "$LF_CD_FILE")")"
        if [ "$DIR" != "$PWD" ]; then
            echo "cd to $DIR"
            cd "$DIR"
        fi
        rm "$LF_CD_FILE"
    fi
    unset LF_CD_FILE
}

# alias 
alias ll='eza --icons --color -al'
alias ls='eza --icons --color '
alias l='lfrun'
alias v='nvim'
alias mc='tmux split -h lf; lf'
alias q="exit"
alias cd="z"


export PATH="$PATH:/home/fitsum/.local/bin"
export EDITOR=nvim
export FPATH="~/eza/completions/zsh:$FPATH"
export DISPLAY=:0
eval `dircolors ~/.config/color/dircolors-solarized/dircolors.256dark.no-bold`
eval "$(zoxide init zsh)"
