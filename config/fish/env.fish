set -x TERMINAL st
set -x PATH "$PATH:$HOME/.local/bin:$HOME/.rbenv/bin:$HOME/.emacs.d/bin"
set -x EDITOR 'vim'

## Fish related
set -g GHQ_SELECTOR peco
set -x GHQ_ROOT "$HOME/Code"
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_color_scheme dracula
