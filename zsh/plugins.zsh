# Plugin-specific configurations

# You Should Use plugin
export YSU_MESSAGE_POSITION="after"

# Starship prompt (cached for speed)
if [ ! -f ~/.cache/starship_init.zsh ]; then
  mkdir -p ~/.cache
  starship init zsh > ~/.cache/starship_init.zsh 2>/dev/null
fi
source ~/.cache/starship_init.zsh

# Generate completions on-demand if they do not exist (lazy-loaded via fpath)
if [ ! -d ~/.zsh/completions ]; then
  mkdir -p ~/.zsh/completions
  if command -v uv &>/dev/null; then
    uv generate-shell-completion zsh > ~/.zsh/completions/_uv 2>/dev/null
  fi
  if command -v uvx &>/dev/null; then
    uvx --generate-shell-completion zsh > ~/.zsh/completions/_uvx 2>/dev/null
  fi
fi


