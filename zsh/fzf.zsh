# FZF configuration
export FZF_BASE=/home/linuxbrew/.linuxbrew/opt/fzf

# Add completions to fpath (must be before compinit)
fpath=(/usr/share/zsh/site-functions $fpath)

# fzf-tab configuration
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color=always $realpath'
