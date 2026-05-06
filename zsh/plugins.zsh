# Plugin-specific configurations

# You Should Use plugin
export YSU_MESSAGE_POSITION="after"

# Starship prompt
eval "$(starship init zsh)"

# Shell completions (cached)
if [ ! -f ~/.uv-completion.zsh ]; then
  uv generate-shell-completion zsh > ~/.uv-completion.zsh 2>/dev/null
fi
[ -f ~/.uv-completion.zsh ] && source ~/.uv-completion.zsh

if [ ! -f ~/.uvx-completion.zsh ]; then
  uvx --generate-shell-completion zsh > ~/.uvx-completion.zsh 2>/dev/null
fi
[ -f ~/.uvx-completion.zsh ] && source ~/.uvx-completion.zsh

# Eza completions
export FPATH="$HOME/.eza/completions/zsh:$FPATH"
