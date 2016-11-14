" Store plugins in local config dir
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'           " Native powerline-font status bar
Plug 'scrooloose/nerdtree'               " Togglable file explorer sidebar
Plug 'morhetz/gruvbox'                   " Nice colorscheme
Plug 'eugen0329/vim-esearch'             " Search all files with Ag
Plug 'airblade/vim-gitgutter'            " Git status by line
Plug 'terryma/vim-multiple-cursors'      " Multiple cursors like Sublime
Plug 'scrooloose/nerdcommenter'          " Easier commenting/uncommenting
Plug 'scrooloose/syntastic'              " Automatic linting for many languages
Plug 'rust-lang/rust.vim'                " Rust syntax, linting, and more
Plug 'tpope/vim-surround'                " Easy manipulation of quotes, tags and other delimiters
Plug 'godlygeek/tabular'                 " Align things around a delimiter, like = in a block of text

" Add plugins to &runtimepath
call plug#end()
