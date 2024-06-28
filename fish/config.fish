# ---------------- Settings --------------------
# ----------------------------------------------
set -g fish_greeting                           # disable fish greeting
set -g fish_history 10000                      # Increase history size
set -g fish_complete_select_descriptions yes   # Show descriptions for completions
set -g fish_complete_select_colorize yes       # Colorize completions
set -g fish_autosuggestion_enabled 1           # Enable autosuggestions


set -g fish_vi_force_cursor 1                  # Force cursor to be line
set -g fish_cursor_default block              	
set -g fish_cursor_insert line blink           
set -g fish_cursor_replace_one  underscore     
set -g fish_cursor_external line blink         
set -g fish_cursor_visual  block               

source /opt/asdf-vm/asdf.fish 

if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source
    starship init fish | source
    zoxide init fish | source
end

# Shell variables
set -x SHELL fish
set -x EDITOR "nvim"
set -x VISUAL "$EDITOR"
set -x ALTERNATE_EDITOR "vim"

# Zig
if test -d $HOME/.zvm
    set -x ZVM_INSTALL "$HOME/.zvm/self"
    fish_add_path -aP "$HOME/.zvm/bin"
    fish_add_path -aP $ZVM_INSTALL
end


# ----------------------------------------------
# ----------------- Aliases --------------------
# ----------------------------------------------

# config fish config
alias vfish "nvim ~/.config/fish/config.fish"
alias reload "source ~/.config/fish/config.fish"

alias ls "exa --icons -l -o --group-directories-first --color=always --time-style=iso" # ls with icons
alias la "ls -lah"
alias lt "ls -T -la"

alias tns "tmux new -s"

alias v "nvim"
alias vim "nvim"

alias code="/mnt/c/Users/yw/AppData/Local/Programs/Microsoft\ VS\ Code/code.exe"

~/.local/bin/mise activate fish | source
