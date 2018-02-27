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

set relativenumber  " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set matchtime=1     " Feels painfully slow by default

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

set scrolloff=8             " Start scrolling when we're 8 lines away from margins

set sidescrolloff=15

set sidescroll=5

set cul                     " Highlight the current line

set mouse=a          " No longer default, set it explicitely because we have a good terminal

set switchbuf+=usetab,newtab   " Prevent replacing the current buffer with quickfix and :b commands

set hidden           " Don't ask to save when replacing a buffer, just put it in the background

" Change backup and swap dirs
" So these files don't appear in
" our project directories
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.config/nvim/undo

" Use a more ergonomic leader for custom mappings
let mapleader=' '

"--------------- Theming -------------------"

" Let airline know we have powerline font installed
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Use tabbar for buffers when only one tab
let g:airline#extensions#tabline#enabled = 1

" We're using gnome-terminal, so we can haz italics
let g:gruvbox_italic=1

" Syntax highlighting
colorscheme gruvbox

" Always show the sign column as it functions as our separator, prevents
" jerking the window when gitgutter starts working.
set signcolumn=yes

" Let us have real color
set termguicolors

" Preserve gruvbox colors in :term
let g:terminal_color_0  = '#282828'
let g:terminal_color_1  = '#cc241d'
let g:terminal_color_2  = '#98971a'
let g:terminal_color_3  = '#d79921'
let g:terminal_color_4  = '#458588'
let g:terminal_color_5  = '#b16286'
let g:terminal_color_6  = '#689d6a'
let g:terminal_color_7  = '#a89984'
let g:terminal_color_8  = '#928374'
let g:terminal_color_9  = '#fb4934'
let g:terminal_color_10 = '#b8bb26'
let g:terminal_color_11 = '#fabd2f'
let g:terminal_color_12 = '#83a598'
let g:terminal_color_13 = '#d3869b'
let g:terminal_color_14 = '#8ec07c'
let g:terminal_color_15 = '#ebdbb2'

" Set cursor in terminals to red for easy identification
" of what mode we're in.
highlight TermCursor ctermfg=red guifg=red

" Always have tabline showing or it won't draw pretty
set showtabline=2

" Need extra echo area space for echodoc, and we already
" show the mode in the statusbar.
set noshowmode

" Crontab needs to be edited in place.
au FileType crontab set nobackup nowritebackup

" Show invisibles
set list 
set listchars=space:·,tab:\|\ ,eol:¬

" Nicer vertical separator
set fillchars+=vert:\ 

"--------------- CtrlSF ------------------"

" Search using regex by default
let g:ctrlsf_regex_pattern = 1

nmap <c-h> <Plug>CtrlSFPrompt

"--------------- Picker ------------------"

nmap <unique> <c-p>e <Plug>PickerEdit
nmap <unique> <c-p>s <Plug>PickerSplit
nmap <unique> <c-p>t <Plug>PickerTabedit
nmap <unique> <c-p>v <Plug>PickerVsplit
nmap <unique> <c-p>b <Plug>PickerBuffer
nmap <unique> <c-p>] <Plug>PickerTag
nmap <unique> <c-p>w <Plug>PickerStag
nmap <unique> <c-p>o <Plug>PickerBufferTag
nmap <unique> <c-p>h <Plug>PickerHelp

"--------------- NerdTree -----------------"

" Easier toggle for nerdtree
nmap <Leader>t :NERDTreeMirrorToggle<cr>

" Disable help text and bookmark title
let g:NERDTreeMinimalUI = 1

" Show hidden files in NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeSortHiddenFirst = 1
let g:NERDTreeWinSize = 38

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "",
    \ "Staged"    : "",
    \ "Untracked" : "",
    \ "Renamed"   : "",
    \ "Unmerged"  : "",
    \ "Deleted"   : "",
    \ "Dirty"     : " ",
    \ "Clean"     : "",
    \ 'Ignored'   : '',
    \ "Unknown"   : ""
    \ }

" add or override pattern matches for filetypes
" these take precedence over the file extensions
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.gitlab-ci.yml'] = ''

"---------------- Mappings -----------------"

" Easy sudo write when you forget to sudoedit
cmap w!! w !sudo tee > /dev/null %

" Easy reload of the file (discarding changes)
nmap <Leader>r :e! %<cr>

" Make it easy to clear highlight when our plugin
" for doing it automatically doesn't quite work.
nmap <Leader><Leader> :nohlsearch<CR>

" easily access vimrc for editing in new tab
nmap <Leader>ec :tabedit ~/.config/nvim/init.vim<cr>
nmap <Leader>ep :tabedit ~/.config/nvim/plugins.vim<cr>

" Move the current line up and down like in subl/atom
noremap <C-S-Up> :m -2<CR>
noremap <C-S-k> :m -2<CR>
noremap <C-S-Down> :m +1<CR>
noremap <C-S-j> :m +1<CR>

" Easy access to undotree
nnoremap <Leader>u :MundoToggle<CR>

" Keep our visual mode selection when indenting
vnoremap < <gv
vnoremap > >gv

" Make it easy to copy the whole buffer
nnoremap <Leader>y :%y+<CR>

"------------ Split Management -------------"

" Easier escaping from terminal mode
tnoremap <Leader><ESC> <C-\><C-n>

" Open new splits more naturally in bottom/right
set splitbelow
set splitright

"------------- Auto Commands ---------------"

augroup allthethings

    " Clear previously applied autocmds
    autocmd!

    " Automatically reload this file on save
    autocmd BufWritePost init.vim source % | :AirlineRefresh
    autocmd BufWritePost plugins.vim source % | :AirlineRefresh

augroup END

"------------ Autoformat --------------"

nmap <Leader>a :Autoformat<CR>

" -------------- Startify -------------------"
let g:startify_list_order = ['sessions', 'dir', 'bookmarks',
        \ 'files', 'commands']
let g:ascii = [
            \ "           .... ",
            \ "         ,''. :   __ ",
            \ "             \\|_.'  `:       _.----._//_ ",
            \ "            .'  .'.`'-._   .'  _/ -._ \\)-.----O ",
            \ "           '._.'.'      '--''-'._   '--..--'-` ",
            \ "            .'.'___    /`'---'. / ,-'` ",
            \ "snd       _<__.-._))../ /'----'/.'_____:'. ",
            \ "   \_    :            \ ]              :  '. ",
            \ "     \___:             \\              :    '. ",
            \ "         :              \\__           :    .' ",
            \ "         :_______________|__]__________:  .' ",
            \ "                    .' __ '.           :.' "
            \ ]
let g:startify_custom_header =
        \ 'map(startify#fortune#boxed() + g:ascii, "\"   \".v:val")'

" Don't annoyingly cd to what I open..
let g:startify_change_to_dir = 0

" Use the session support.
let g:startify_session_dir = "~/.config/nvim/session"

" -------------- Asyncomplete ---------------- "

" Prevent that pesky scratch window from appearing
set completeopt-=preview

" Supertab-like completion without all of supertab!
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-Tab>"

let g:asyncomplete_remove_duplicates = 1

" Registering buffer completer
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'whitelist': ['*'],
    \ 'blacklist': ['go'],
    \ 'priority': 12,
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ }))

" Registering file/directory completer
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

" Registering flow for javascript
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#flow#get_source_options({
    \ 'name': 'flow',
    \ 'whitelist': ['javascript'],
    \ 'completor': function('asyncomplete#sources#flow#completor'),
    \ 'config': {
    \    'prefer_local': 1,
    \    'show_typeinfo': 1
    \  },
    \ }))

" Registering php language server protocol
au User lsp_setup call lsp#register_server({                                    
     \ 'name': 'php-language-server',                                            
     \ 'cmd': {server_info->['php', expand('~/.config/nvim/plugged/php-language-server/bin/php-language-server.php')]},
     \ 'whitelist': ['php'],                                                     
     \ })

" Registering css/sass language server protocol
" Requires external program vscode-css-languageserver-bin
if executable('css-languageserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'css-languageserver',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
        \ 'whitelist': ['css', 'less', 'sass'],
        \ })
endif

" -------------- Fuzzy Finder ---------------- "
let g:picker_find_executable = 'rg'
let g:picker_find_flags = '--color never --files'

let g:picker_selector_executable = 'sk'
let g:picker_selector_flags = ''

