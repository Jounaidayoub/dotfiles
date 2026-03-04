# Add custom paths (avoid duplicates)
_add_path() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) export PATH="$1:$PATH" ;;
  esac
}

_add_path "$HOME/.local/bin"
_add_path "$HOME/.opencode/bin"
_add_path "/home/light/.opencode/bin"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
_add_path "$PNPM_HOME"

# Linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
