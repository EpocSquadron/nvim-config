" Plugins from Pacman for vim classic
set rtp^=/usr/share/vim/vimfiles/

" Plugins via Plug
source ~/.config/nvim/plugins.vim

"------------- Common Behaviour -------------"

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set showcmd         " Show (partial) command in status line.

set relativenumber  " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

" Change backup and swap dirs
" So these files don't appear in
" our project directories
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//

"--------------- Theming -------------------"

" Let airline know we have powerline font installed
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Syntax highlighting
colorscheme gruvbox

" Let us have real color
set termguicolors

" Crontab needs to be edited in place.
au FileType crontab set nobackup nowritebackup

" Show invisibles
set list 
set listchars=space:·,tab:\|\ ,eol:¬

"--------------- Esearch -----------------"

let g:esearch = {
  \ 'adapter':    'rg',
  \ 'backend':    'nvim',
  \ 'out':        'win',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

"--------------- NerdTree -----------------"

" Easier toggle for nerdtree
nmap <Leader>t :NERDTreeToggle<cr>

augroup nerdtree

    " Clear previously applied autocmds
    autocmd!

    " Open nerdtree on starutp when no files specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " Close nvim when the only window open is nerdtree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup END
"---------------- Mappings -----------------"

" Use a more ergonomic leader for custom mappings
let mapleader=';'

" easily access vimrc for editing in new tab
nmap <Leader>ec :tabedit ~/.config/nvim/init.vim<cr>
nmap <Leader>ep :tabedit ~/.config/nvim/plugins.vim<cr>

" Simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Map our muscle memory finding things to fzy
nnoremap <C-p> :FuzzyOpen<CR>
nnoremap <C-r> :FuzzyGrep<CR>

" Easier tag searching
nmap <Leader>f :tag<space>

"------------ Split Management -------------"

" Remap Ctrl-w+h/j/k/l to Ctrl+h/j/k/l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new splits more naturally in bottom/right
set splitbelow
set splitright

"------------- Auto Commands ---------------"

augroup allthethings

    " Clear previously applied autocmds
    autocmd!

    " Use relative line numbers for normal mode,
    " absolute in insert for calulation ergonomics
    autocmd InsertEnter * :set number
    autocmd InsertLeave * :set relativenumber

    " Automatically reload this file on save
    autocmd BufWritePost init.vim source %
augroup END

"------------ Multiple Cursors --------------"

" Don't use the default mappings, they conflict
" with CtrlP and such.
let g:multi_cursor_use_default_mapping = 0

" New mappings
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-N>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'

" Tips and Tricks
" - Use `zz` to center the current line in the window.
" - Use `ci<some delimiter>` to change everything inbetween brackets, quotes,..
" - Use <C-o> to return to a previous buffer, <C-i> to go forward
" - Use `m<anything>` to mark a spot in a file, `'<samething>` to return to it
"   - `<samething> will bring you to the line and column
"   - Capitalize <samething> to make it available between files.
" - Use `gt` to go to next tab, `gT` to go to previous
" - Use `+y` to yank to the system clipboard
" - Use `<Leader>ff` to search directory for files containing a string
