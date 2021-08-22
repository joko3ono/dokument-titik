set -x TERMINAL st
set -x PATH "$HOME/.local/bin:$HOME/.rbenv/shims:$HOME/.emacs.d/bin:/opt/nodejs/bin:$PATH"
set -x EDITOR 'vim'

## Fish related
set -g GHQ_SELECTOR peco
set -x GHQ_ROOT "$HOME/Code"
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_color_scheme dracula
