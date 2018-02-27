" Store plugins in local config dir
call plug#begin('~/.config/nvim/plugged')

" ========== UI Goodies ================= "

Plug 'vim-airline/vim-airline'            " Native powerline-font status bar
Plug 'morhetz/gruvbox'                    " Nice colorscheme
Plug 'kristijanhusak/vim-hybrid-material' " Another one
Plug 'ryanoasis/vim-devicons'             " Nice filetype icons like in Atom
Plug 'airblade/vim-gitgutter'             " Git status by line
Plug 'machakann/vim-highlightedyank'      " Highlight selection that was just yanked, for visual confirmation

" =============== Browsing ============== "

Plug 'mhinz/vim-startify'                      " Nice start screen
Plug 'scrooloose/nerdtree'                     " Togglable file explorer sidebar
Plug 'jistr/vim-nerdtree-tabs'                 " Use a single nerdtree buffer across all tabs
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Colorized filetypes in nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'             " Git status in nerdtree
Plug 'simnalamburt/vim-mundo'                  " Interactive navigation of undo history
Plug 'majutsushi/tagbar'                       " Browse class, function, variable defs in current file
Plug 'dyng/ctrlsf.vim'                         " Sublime inspired search in files powered by ripgrep
Plug 'srstevenson/vim-picker'                  " Unopinionated fuzzy finder with pluggable backends (skim + rg ftw)

" ========== Useful Functionality ======= "
Plug 'tpope/vim-surround'                 " Easy manipulation of quotes, tags and other delimiters
Plug 'godlygeek/tabular'                  " Align things around a delimiter, like = in a block of text
Plug 'raimondi/delimitmate'               " Autocompletes parens, etc in insert mode like subl
Plug 'Chiel92/vim-autoformat'             " Hooks into various formatters, like atom-beautify
Plug 'junegunn/vim-slash'                 " QoL improvements to search

" ======= Syntax Intelligence =========== "
Plug 'w0rp/ale'                           " Automatic linting for many languages
Plug 'sheerun/vim-polyglot'               " All the syntax highlighters we want
Plug 'ap/vim-css-color'                   " Color preview for hex codes etc

" ======= Omni Completion =============== "
Plug 'prabirshrestha/async.vim'               " Helpers
Plug 'prabirshrestha/asyncomplete.vim'        " Vimscript version of nvim-completion-manager
Plug 'prabirshrestha/asyncomplete-buffer.vim' " Buffer source
Plug 'prabirshrestha/asyncomplete-file.vim'   " File and directory names
Plug 'keremc/asyncomplete-racer.vim'          " Rust via racer
Plug 'prabirshrestha/asyncomplete-flow.vim'   " JavaScript via flow
Plug 'prabirshrestha/vim-lsp'                 " Helpers for the below.
Plug 'prabirshrestha/asyncomplete-lsp.vim'    " Anything that uses Language Server Protocol

" PHP via a language server implementation
Plug 'felixfbecker/php-language-server', {'do': 'composer install && composer run-script parse-stubs'}

" Add plugins to &runtimepath
call plug#end()
