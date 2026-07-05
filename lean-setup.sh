#!/usr/bin/env bash
# ============================================================
# lean-setup.sh — Minimal setup for Ubuntu (No Brew/NVM)
# ============================================================

set -e

echo "==> Starting Lean Setup..."

# 1. Update and install core APT tools
echo "==> Installing system tools..."
sudo apt update
sudo apt install -y zsh git curl wget eza bat fd-find ripgrep btop tmux xclip

# 2. Setup Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "==> Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 3. Install Starship (Prompt)
if ! command -v starship &>/dev/null; then
    echo "==> Installing Starship..."
    curl -sS https://starship.rs/install.sh | sh -s -- --yes
fi

# 4. Setup Python & Rust tools (uv & bun)
echo "==> Installing uv & bun..."
curl -LsSf https://astral.sh/uv/install.sh | sh
curl -fsSL https://bun.sh/install | bash


# Download and install n and Node.js:
curl -fsSL https://raw.githubusercontent.com/mklement0/n-install/stable/bin/n-install | bash -s 26

# Node.js already installs during n-install, but you can also install it manually:
#   n install 26

# Verify the Node.js version:
node -v # Should print "v26.0.0".

# Install Corepack:
npm install -g corepack

# Download and install pnpm:
corepack enable pnpm

# Verify pnpm version:
pnpm -v


# 5. Install oh-my-zsh custom plugins
echo "==> Installing oh-my-zsh plugins..."
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
mkdir -p "$ZSH_CUSTOM/plugins"

[ -d "$ZSH_CUSTOM/plugins/you-should-use" ] || git clone --depth 1 https://github.com/MichaelAquilina/zsh-you-should-use.git "$ZSH_CUSTOM/plugins/you-should-use"
[ -d "$ZSH_CUSTOM/plugins/fzf-tab" ] || git clone --depth 1 https://github.com/Aloxaf/fzf-tab.git "$ZSH_CUSTOM/plugins/fzf-tab"
[ -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ] || git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
[ -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ] || git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# 6. Install fzf (no Homebrew — git clone)
echo "==> Installing fzf..."
if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
fi
~/.fzf/install --bin --no-update-rc --no-fish --no-bash

# Fix fzf symlink (Ubuntu package is fdfind, not fd)
if command -v fdfind &>/dev/null && ! command -v fd &>/dev/null; then
    sudo ln -sf "$(which fdfind)" /usr/local/bin/fd
fi

# 7. Apply Dotfiles
if [ -d "$HOME/dotfiles" ]; then
    echo "==> Applying Dotfiles symlinks..."
    chmod +x "$HOME/dotfiles/bin/dotfiles"
    "$HOME/dotfiles/bin/dotfiles" restore
fi

echo "==> DONE! Restart your terminal."
echo "NOTE: I will now update your paths.zsh to include the manual Node location."
