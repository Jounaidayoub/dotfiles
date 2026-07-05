# Plugin-specific configurations

# You Should Use plugin
export YSU_MESSAGE_POSITION="after"

# Starship prompt
eval "$(starship init zsh)"
# Generate completions on-demand if they do not exist (will be lazy-loaded via fpath)
mkdir -p ~/.zsh/completions
if [ ! -f ~/.zsh/completions/_uv ] && command -v uv &>/dev/null; then
  uv generate-shell-completion zsh > ~/.zsh/completions/_uv 2>/dev/null
fi
if [ ! -f ~/.zsh/completions/_uvx ] && command -v uvx &>/dev/null; then
  uvx --generate-shell-completion zsh > ~/.zsh/completions/_uvx 2>/dev/null
fi

# Eza completions
export FPATH="$HOME/.eza/completions/zsh:$FPATH"
