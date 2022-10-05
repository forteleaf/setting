# ~/.config/fish/config.fish

kubectl completion fish | source
alias g=git

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set --export PATH $HOME/.cargo/bin $PATH

# prompt
#starship init fish | source

# exa ( ls changer )
alias l="exa --icons -h"
alias ls="exa --icons --long -h"
alias la="exa --all --long --icons -h"

export FZF_DEFAULT_COMMAND='fd --type f'
