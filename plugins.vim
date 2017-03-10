" Store plugins in local config dir
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'           " Native powerline-font status bar
Plug 'scrooloose/nerdtree'               " Togglable file explorer sidebar
Plug 'simnalamburt/vim-mundo'            " Interactive navigation of undo history
Plug 'Xuyuanp/nerdtree-git-plugin'       " Git status in nerdtree
Plug 'morhetz/gruvbox'                   " Nice colorscheme
Plug 'eugen0329/vim-esearch'             " Search all files with Ag
Plug 'airblade/vim-gitgutter'            " Git status by line
Plug 'lambdalisue/vim-gita'              " Ability to interact with git within nvim
Plug 'delimitMate.vim'                   " Autocompletes parens, etc in insert mode like subl
Plug 'terryma/vim-multiple-cursors'      " Multiple cursors like Sublime
Plug 'scrooloose/nerdcommenter'          " Easier commenting/uncommenting
Plug 'neomake/neomake'                   " Automatic linting for many languages
Plug 'rust-lang/rust.vim'                " Rust syntax, linting, and more
Plug 'cespare/vim-toml'                  " Toml syntax highlighting
Plug 'tpope/vim-surround'                " Easy manipulation of quotes, tags and other delimiters
Plug 'godlygeek/tabular'                 " Align things around a delimiter, like = in a block of text
Plug 'junegunn/goyo.vim'                 " Distraction-free mode toggling
Plug 'machakann/vim-highlightedyank'     " Highlight selection that was just yanked, for visual confirmation
Plug 'cloudhead/neovim-fuzzy'            " Fuzzy finder using fzy (instead of CtrlP)
Plug 'junegunn/vim-slash'                " QoL improvements to search
Plug 'posva/vim-vue'                     " Vue.js syntax highlighting
Plug 'ap/vim-css-color'                  " Color preview for hex codes etc

" Add plugins to &runtimepath
call plug#end()
