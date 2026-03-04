# ZSH Options

# Changing Directories
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus

# Completions
setopt always_to_end
setopt auto_list
setopt auto_menu
setopt auto_param_slash
setopt complete_in_word
unsetopt menu_complete

# Expansion and Globbing
setopt extended_glob
setopt glob_dots

# History
setopt append_history
setopt extended_history
unsetopt hist_beep
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt inc_append_history
setopt share_history

# Input/Output
unsetopt clobber
unsetopt correct
unsetopt correct_all
unsetopt flow_control
setopt interactive_comments
unsetopt mail_warning
setopt path_dirs
setopt rc_quotes
unsetopt rm_star_silent

# Job Control
setopt auto_resume
unsetopt bg_nice
unsetopt check_jobs
unsetopt hup
setopt long_list_jobs
setopt notify

# Prompting
setopt prompt_subst

# Zle
unsetopt beep
setopt combining_chars
setopt emacs

# Key bindings for alt+arrow words
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
