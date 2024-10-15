" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

set relativenumber

" Make the comments green
highlight Comment ctermfg=green

" Add numbers to each line on the left-hand side.
set number
" Highlight cursor line underneath the cursor horizontally.

set cursorline
" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch
"
" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Leader
let mapleader = " " " Maps leader to SPACE

" Keybinds
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :q<CR>

nnoremap <leader>s :vsplit<CR> <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l

" Copilot
"imap <silent><script><expr> <A-Tab> copilot#Accept("\<CR>")
"let g:copilot_no_tab_map = v:true

" remap copilot autcomplete to ctrl + J
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" Telescope config
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

lua require('init')
