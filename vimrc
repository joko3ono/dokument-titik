call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'

Plug 'tpope/vim-fugitive'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'jlanzarotta/bufexplorer'
Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter'
Plug 'janko/vim-test'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rails'
Plug 'ngmy/vim-rubocop'

Plug 'mileszs/ack.vim'
Plug 'psliwka/vim-smoothie'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'dag/vim-fish'

call plug#end()

colorscheme default
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set listchars=tab:>·,trail:~,extends:>,precedes:<
set list
set nowrap
set background=dark
set backupdir=~/.vim/backups
" Where backups will go
set directory=~/.vim/tmp
" Where temporary files will go
set clipboard=unnamedplus
set foldmethod=indent
set laststatus=2

set relativenumber
" set number
set ts=2
set sw=2
set expandtab
set si
" Smart indent
set noswapfile
" Disable .swp files creation for every buffer
set ignorecase
" Disable case-sensitive search when search in lowercase
set smartcase
" Disable case-sensitive search when search in lowercase
set incsearch
" Find the next match as we type the search
set hlsearch
" Hilight searches by default
set updatetime=300
set signcolumn=yes
set shortmess+=c
set colorcolumn=160

" add jbuilder syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" Fzf
" set rtp+=/usr/local/opt/fzf

function IndentV()
  Tabularize /^[^:]*\zs:/r1c0l0
  Tabularize /^[^=>]*\zs=>/l1
endfunction

let g:notes_directories = ['~/Dropbox/Shared Notes/VimNotes']

"*****************************************************************************"
"
" Key mappings
"
"*****************************************************************************"
let mapleader = " "

nmap <leader>, :noh<cr>
" COC settings
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
nmap <leader>cr :RunReek<cr>

map <leader>= :call IndentV()<cr>

nmap <leader>fm :Tags<cr>
nnoremap <leader>/ :Tabularize /
nnoremap <leader>a :Ack<space>

" Rails support
nnoremap <leader>em :Emodel<space>
nnoremap <leader>ec :Econtroller<space>
nnoremap <leader>eh :Ehelper<space>
nnoremap <leader>ee :Extract<space>
nnoremap <leader>ev :Eview<space>
nnoremap <leader>gg :Generator<space>

" Taking note
nnoremap <leader>nn :Note<space>

nmap <leader>pf :Telescope find_files<cr>
nmap <leader>pb :Telescope buffers<cr>
nmap <leader>ph :Telescope help_tags<cr>
" Settings
nmap <leader>fer :source ~/.vimrc<cr>
nmap <leader>fed :e ~/.vimrc<cr>

nmap <leader>fs :w<cr>
nmap <silent><leader><tab> :bprev<cr>
nmap <silent><leader>bd :bd<cr>
nmap <silent><leader><leader><tab> :BufExplorer<cr>

nmap <silent><leader>wl <C-w>l
nmap <silent><leader>wh <C-w>h
nmap <silent><leader>wj <C-w>j
nmap <silent><leader>wk <C-w>k
nmap <silent><leader>wn <C-w>k
nmap <silent><leader>wd <C-w>c

nmap <silent><leader>wp :tabp<cr>
nmap <silent><leader>wn :tabn<cr>

nmap <silent><leader>wv <C-w>v
nmap <silent><leader>ws <C-w>s
nmap <silent><leader>wt <C-w>v<C-w>T

nmap <silent><leader>tf :call RunCurrentSpecFile()<CR>
nmap <silent><leader>ts :call RunNearestSpec()<CR>
nmap <silent><leader>tl :call RunLastSpec()<CR>
nmap <silent><leader>ta :call RunAllSpecs()<CR>

" Use <Tab> to move between brackets
nnoremap <tab> %
vnoremap <tab> %
map <tab> %

" Fern
" nmap <silent><leader>ft :Fern . -drawer -reveal=% -toggle<cr>
" Nerdtree
nmap <silent><leader>ff :NERDTreeToggle<cr>
nmap <silent><leader>ft :NERDTreeFind<cr>

nmap <silent><leader>gs :Gstatus<cr>

nmap <silent><leader>qq :q!<cr>
