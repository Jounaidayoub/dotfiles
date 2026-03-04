# Plugin-specific configurations

# You Should Use plugin
export YSU_MESSAGE_POSITION="after"

# Starship prompt
eval "$(starship init zsh)"

# Shell completions
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# Eza completions
export FPATH="$HOME/.eza/completions/zsh:$FPATH"
