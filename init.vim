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

set inccommand=nosplit      " Preview the result of commands while typing them.

" Change backup and swap dirs
" So these files don't appear in
" our project directories
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//

" Use a more ergonomic leader for custom mappings
let mapleader=';'

"--------------- Theming -------------------"

" Let airline know we have powerline font installed
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Use tabbar for buffers when only one tab
let g:airline#extensions#tabline#enabled = 1

" Syntax highlighting
colorscheme gruvbox

" Let us have real color
set termguicolors

" Set cursor in terminals to red for easy identification
" of what mode we're in.
highlight TermCursor ctermfg=red guifg=red

" Always have tabline showing or it won't draw pretty
set showtabline=2

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

" easily access vimrc for editing in new tab
nmap <Leader>ec :tabedit ~/.config/nvim/init.vim<cr>
nmap <Leader>ep :tabedit ~/.config/nvim/plugins.vim<cr>

" Map our muscle memory finding things to fzy
nnoremap <C-p> :FuzzyOpen<CR>
nnoremap <C-r> :FuzzyGrep<CR>

" Move the current line up and down like in subl/atom
noremap <C-S-Up> :m -2<CR>
noremap <C-S-k> :m -2<CR>
noremap <C-S-Down> :m +1<CR>
noremap <C-S-j> :m +1<CR>

" Easier tag searching
nmap <Leader>f :tag<space>

" Easy access to undotree
nnoremap <Leader>u :UndotreeToggle<CR>

" Easier escaping from terminal mode
tnoremap <Leader><ESC> <C-\><C-n>
tnoremap <C-j> <C-\><C-n><C-w><C-j>
tnoremap <C-k> <C-\><C-n><C-w><C-k>
tnoremap <C-l> <C-\><C-n><C-w><C-l>
tnoremap <C-h> <C-\><C-n><C-w><C-h>

"------------ Split Management -------------"

" Remap Ctrl-w+h/j/k/l to Ctrl+h/j/k/l
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Open new splits more naturally in bottom/right
set splitbelow
set splitright

"------------- Auto Commands ---------------"

augroup allthethings

    " Clear previously applied autocmds
    autocmd!

    " Automatically reload this file on save
    autocmd BufWritePost init.vim source %
    autocmd BufWritePost plugins.vim source %

    " Automatically enter insert mode when switching to a term pane
    autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif
    autocmd BufEnter * if &buftype == 'terminal' | :set nolist | endif
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

