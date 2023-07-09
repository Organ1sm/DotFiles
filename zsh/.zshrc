# -----------------
# Zim configuration
# -----------------
ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh
source /usr/share/fzf/completion.zsh

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

zstyle ':zim:zmodule' use 'degit'
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

#  ┏━╸╻ ╻┏━┓┏━┓┏━┓╺┳╸┏━┓
#  ┣╸ ┏╋┛┣━┛┃ ┃┣┳┛ ┃ ┗━┓
#  ┗━╸╹ ╹╹  ┗━┛╹┗╸ ╹ ┗━┛

export PATH=~/.local/lib/python3.10/site-packages:$PATH
export PATH=~/.local/bin:$PATH

export FZF_ALT_C_COMMAND='command fd --type d --hidden --follow --strip-cwd-prefix --exclude .git'
export FZF_ALT_C_OPTS="--preview 'exa -T -L 1 --group-directories-first --color=always {}'"
export FZF_CTRL_T_COMMAND='command fd --hidden --follow --strip-cwd-prefix --exclude .git'
export FZF_CTRL_T_OPTS="--preview 'bat --color=always {} 2> /dev/null || exa -T -L 1 --group-directories-first --color=always {}'"
export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude={.git,.idea}"
export FZF_DEFAULT_OPTS="--bind ctrl-a:toggle-all,ctrl-b:page-up,ctrl-d:half-page-down,ctrl-f:page-down,ctrl-u:half-page-up  --reverse --tiebreak=length,end --preview 'bat --color=always {} 2> /dev/null || exa -T -L 1 --group-directories-first --color=always {} 2> /dev/null || echo {}' --preview-window 'right:60%'"

export SAVEHIST=100000000
export PAGER="less -R"

export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZVM_KEYTIMEOUT=0

# User configuration
alias proxy="source ~/proxy.sh"
[[ -n "$WT_SESSION" ]] && {
	chpwd() {
	    echo -en '\e]9;9;"'
	    wslpath -w "$PWD" | tr -d '\n'
	    echo -en '"\x07'
  }
}


#  ┏━╸╻ ╻┏┓╻┏━╸╺┳╸╻┏━┓┏┓╻┏━┓
#  ┣╸ ┃ ┃┃┗┫┃   ┃ ┃┃ ┃┃┗┫┗━┓
#  ╹  ┗━┛╹ ╹┗━╸ ╹ ╹┗━┛╹ ╹┗━┛

# Use fd in fzf completion for path listing.
function _fzf_compgen_path() {
  command fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd in fzf completion for directory listing.
function _fzf_compgen_dir() {
  command fd --type d --hidden --follow --exclude ".git" . "$1"
}

# Temporary patch zsh-vi-mode compatibility with zsh-syntax-highlighting.
# Remove once https://github.com/jeffreytse/zsh-vi-mode/pull/188 is merged.
function patch_vi_mode_compatibility() {
  autoload add-zle-hook-widget
  add-zle-hook-widget zle-line-pre-redraw zvm_zle-line-pre-redraw
}

# Load keybindings after vi-mode init, ensuring that they will not be
# overwritten.
function zvm_after_init() {
  patch_vi_mode_compatibility

  source /usr/share/fzf/key-bindings.zsh

  # # Remove default fzf bindings.
  bindkey -r '^T'
  bindkey -r '^[c'

  bindkey '^F' fzf-file-widget
  bindkey '^G' fzf-cd-widget
  bindkey '^R' fzf-history-widget

  bindkey '^N' history-substring-search-down
  bindkey '^P' history-substring-search-up
  bindkey '^J' history-substring-search-down
  bindkey '^K' history-substring-search-up
}

# Load normal and visual bindings after lazy load of vi-mode.
function zvm_after_lazy_keybindings() {
  # Remove default fzf bindings.
  bindkey -M vicmd -r '^T'
  bindkey -M vicmd -r '^[c'

  bindkey -M vicmd '^F' fzf-file-widget
  bindkey -M vicmd '^G' fzf-cd-widget
  bindkey -M vicmd '^R' fzf-history-widget

  bindkey -M vicmd 'k' history-substring-search-up
  bindkey -M vicmd 'j' history-substring-search-down
}
#  ┏━┓╻  ╻┏━┓┏━┓┏━╸┏━┓
#  ┣━┫┃  ┃┣━┫┗━┓┣╸ ┗━┓
#  ╹ ╹┗━╸╹╹ ╹┗━┛┗━╸┗━┛

# config zsh config
alias vzsh="vim ~/.zshrc"
alias reload="source ~/.zshrc"

# apps
alias v="nvim"
alias vim="nvim"

# listing
alias ls='exa --icons --time-style=iso'
alias la='ls -lah'
alias lt="ls -T -la"

# tmux
alias tns='tmux new -s'

alias hx='helix'

# >>> xmake >>>
test -f "/home/organ1sm/.xmake/profile" && source "/home/organ1sm/.xmake/profile"
# <<< xmake <<<