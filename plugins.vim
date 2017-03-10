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
Plug 'shougo/deoplete.nvim'              " Async autocompletion
Plug 'carlitux/deoplete-ternjs', {
            \ 'do': 'npm install -g tern'
            \ }
Plug 'othree/jspc.vim'                   " JS parameter autocompletion
Plug 'ervandew/supertab'                 " Use tab for autocomplete in insert mode
Plug 'shougo/echodoc'                    " Show signatures of autocompletes
Plug 'tpope/vim-surround'                " Easy manipulation of quotes, tags and other delimiters
Plug 'godlygeek/tabular'                 " Align things around a delimiter, like = in a block of text
Plug 'junegunn/goyo.vim'                 " Distraction-free mode toggling
Plug 'machakann/vim-highlightedyank'     " Highlight selection that was just yanked, for visual confirmation
Plug 'cloudhead/neovim-fuzzy'            " Fuzzy finder using fzy (instead of CtrlP)
Plug 'junegunn/vim-slash'                " QoL improvements to search

" ======= Syntax Highligters =========== "
Plug 'othree/html5.vim'                  " HTML5
Plug 'StanAngeloff/php.vim'              " PHP7
Plug 'ekalinin/Dockerfile.vim'           " Dockerfile
Plug 'pearofducks/ansible-vim'           " Ansible YAML
Plug 'lumiliet/vim-twig'                 " Twig
Plug 'rust-lang/rust.vim'                " Rust syntax, linting, and more
Plug 'cespare/vim-toml'                  " Toml syntax highlighting
Plug 'posva/vim-vue'                     " Vue.js syntax highlighting
Plug 'ap/vim-css-color'                  " Color preview for hex codes etc
Plug 'tomlion/vim-solidity'              " Solidity ethereum lang syntax highlighting

" Add plugins to &runtimepath
call plug#end()
