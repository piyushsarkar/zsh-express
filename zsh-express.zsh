zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' '+r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' original true
zstyle :compinstall filename "$HOME/.completion.zsh"

autoload -Uz compinit; compinit # The completion system of Zsh

# history config
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000 # How many commands zsh will load to memory.
SAVEHIST=50000 # How many commands history will save on file.
setopt HIST_FIND_NO_DUPS # History won't show duplicates on search.
setopt HIST_SAVE_NO_DUPS # History won't save duplicates.
setopt HIST_IGNORE_DUPS # do not store (ignore) duplications
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY # adds commands as they are typed, not at shell exit (altnv.to SHARE_HISTORY+APPEND_HISTORY )
setopt HIST_EXPIRE_DUPS_FIRST # expire duplicates first
setopt HIST_REDUCE_BLANKS # removes blank lines from history

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search
bindkey -M vicmd 'k' up-line-or-beginning-search
bindkey -M vicmd 'j' down-line-or-beginning-search
