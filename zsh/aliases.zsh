# eza aliases
alias ls='eza --color=always --group-directories-first --icons'
alias ll='eza -ll --icons  --group-directories-first'
alias l='eza -blF --header --git --color=always --group-directories-first --icons'
alias llm='eza -lbGd --header --git --sort=modified --color=always --group-directories-first --icons' 
alias la='eza -la --long --all --group --group-directories-first'
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --color=always --group-directories-first --icons'

alias lS='eza -1 --color=always --group-directories-first --icons'
alias lt='eza --tree --level=2 --color=always --group-directories-first --icons'
alias l.="eza -a | grep -E '^\.'"
alias l.="eza -a | grep -E '^\.'"

# General aliases
alias ..='cd ..'
alias py='python3'
alias ipy='ipython3'
alias p='cd /home/light/project'
alias npm='pnpm'
alias copy='xclip -selection clipboard'
alias cat='batcat'
# Development aliases
alias ccproxy='export ANTHROPIC_AUTH_TOKEN="test" ANTHROPIC_BASE_URL="http://localhost:8081" ANTHROPIC_MODEL="claude-opus-4-5-thinking" ANTHROPIC_DEFAULT_OPUS_MODEL="claude-opus-4-5-thinking" ANTHROPIC_DEFAULT_SONNET_MODEL="claude-sonnet-4-5-thinking" ANTHROPIC_DEFAULT_HAIKU_MODEL="gemini-2.5-flash-lite[1m]" CLAUDE_CODE_SUBAGENT_MODEL="claude-sonnet-4-5-thinking" ENABLE_EXPERIMENTAL_MCP_CLI="true"'
