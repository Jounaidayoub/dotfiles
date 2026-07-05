# Add custom paths (avoid duplicates)
_add_path() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) export PATH="$1:$PATH" ;;
  esac
}

_add_path "$HOME/.bin"
_add_path "$HOME/.local/bin"
_add_path "$HOME/.opencode/bin"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
_add_path "$PNPM_HOME"

# bun
export BUN_INSTALL="$HOME/.bun"
_add_path "$BUN_INSTALL/bin"

# Neovim
_add_path "/opt/nvim-linux-x86_64/bin"
