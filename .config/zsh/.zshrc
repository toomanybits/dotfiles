# Load colors so we can access $fg and more.
autoload -U colors && colors

# History settings.
export HISTFILE="${XDG_CACHE_HOME}/zsh/.zhistory"
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "
export HISTSIZE=1000        # History lines stored in mememory.
export SAVEHIST=1000        # History lines stored on disk.
setopt INC_APPEND_HISTORY    # Immediately append commands to history file.
setopt HIST_IGNORE_ALL_DUPS  # Never add duplicate entries.
setopt HIST_IGNORE_SPACE     # Ignore commands that start with a space.
setopt HIST_REDUCE_BLANKS    # Remove unnecessary blank lines.

bindkey -v

# hidden files, these ares values in the default generated zsh config.
autoload -U compinit
compinit
_comp_options+=(globdots)

zstyle ':completion:*' menu select=2
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''

# loads aliases
[ -f "${XDG_CONFIG_HOME}/zsh/.aliases" ] && . "${XDG_CONFIG_HOME}/zsh/.aliases"

# loads prompt
eval "$(starship init zsh)"

# zsh-autosuggestions settings.
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=30

# Load / source zsh plugins.
. "${XDG_DATA_HOME}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
. "${XDG_DATA_HOME}/zsh-autosuggestions/zsh-autosuggestions.zsh"
