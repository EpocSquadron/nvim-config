" Store plugins in local config dir
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'            "  Native powerline-font status bar
Plug 'scrooloose/nerdtree'                "  Togglable file explorer sidebar
Plug 'simnalamburt/vim-mundo'             "  Interactive navigation of undo history
Plug 'Xuyuanp/nerdtree-git-plugin'        "  Git status in nerdtree
Plug 'jistr/vim-nerdtree-tabs'            "  Use a single nerdtree buffer across all tabs
Plug 'mhinz/vim-startify'                 "  Nice start screen
Plug 'ryanoasis/vim-devicons'             "  Nice filetype icons like in Atom
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Colorized filetypes in nerdtree
Plug 'morhetz/gruvbox'                    "  Nice colorscheme
Plug 'kristijanhusak/vim-hybrid-material' "  Another one
Plug 'eugen0329/vim-esearch'              "  Search all files with rg
Plug 'airblade/vim-gitgutter'             "  Git status by line
Plug 'lambdalisue/gina.vim'               "  Ability to interact with git within nvim
Plug 'raimondi/delimitmate'               "  Autocompletes parens, etc in insert mode like subl
Plug 'Chiel92/vim-autoformat'             "  Hooks into various formatters, like atom-beautify
Plug 'terryma/vim-multiple-cursors'       "  Multiple cursors like Sublime
Plug 'scrooloose/nerdcommenter'           "  Easier commenting/uncommenting
Plug 'shougo/deoplete.nvim'               "  Async autocompletion
Plug 'carlitux/deoplete-ternjs', {
            \ 'do': 'npm install -g tern'
            \ }
Plug 'othree/jspc.vim'                   " JS parameter autocompletion
Plug 'ervandew/supertab'                 " Use tab for autocomplete in insert mode
Plug 'shougo/echodoc'                    " Show signatures of autocompletes
Plug 'tpope/vim-surround'                " Easy manipulation of quotes, tags and other delimiters
Plug 'godlygeek/tabular'                 " Align things around a delimiter, like = in a block of text
Plug 'junegunn/goyo.vim'                 " Distraction-free mode toggling
Plug 'junegunn/limelight.vim'            " Hyper-focus by fading everything in the file but what you're working on
Plug 'machakann/vim-highlightedyank'     " Highlight selection that was just yanked, for visual confirmation
Plug 'cloudhead/neovim-fuzzy'            " Fuzzy finder using fzy (instead of CtrlP)
Plug 'w0rp/ale'                          " Automatic linting for many languages
Plug 'junegunn/vim-slash'                " QoL improvements to search

" ======= Syntax Highligters =========== "
Plug 'sheerun/vim-polyglot'              " All the syntax highlighters we want
Plug 'ap/vim-css-color'                  " Color preview for hex codes etc

" Add plugins to &runtimepath
call plug#end()
