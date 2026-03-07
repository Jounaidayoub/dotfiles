# FZF configuration
export FZF_BASE=/home/linuxbrew/.linuxbrew/opt/fzf

# Add completions to fpath (must be before compinit)
fpath=(/usr/share/zsh/site-functions $fpath)

# fzf-tab configuration
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color=always $realpath'



# Open in tmux popup if on tmux, otherwise use --height mode
export FZF_DEFAULT_OPTS='--height 40% --layout reverse --border top'\

# Preview file content using bat (https://github.com/sharkdp/bat)
# export FZF_CTRL_T_OPTS="
#   --walker-skip .git,node_modules,target
#   --preview 'bat -n --color=always {}'
#   --bind 'ctrl-/:change-preview-window(down|hidden|)'"



show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always --icons {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
# export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always --icons {} | head -200'"


export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"