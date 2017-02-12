call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'zephod/vim-iterm2-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
Plug 'Valloric/YouCompleteMe',
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'vim-ctrlspace/vim-ctrlspace', { 'do': 'npm install' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'Valloric/YouCompleteMe'
Plug 'moll/vim-node'
Plug 'jplaut/vim-arduino-ino'
Plug 'tpope/vim-fugitive'
Plug 'jacquesbh/vim-showmarks'
call plug#end()

"set leader key
let mapleader=',' 

"file type detection
filetype plugin on

"prettify multiline comments
let g:NERDCompactSexyComs = 1

"disable default folding in markdown
let g:vim_markdown_folding_disabled = 1

"enable syntax checking for yaml and json
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

"set line number
set number
set relativenumber
highlight LineNr ctermfg=white ctermbg=gray

"use spaces not tabs
set expandtab
set tabstop=2

"open panes on the right
set splitright

"silver searcher
let g:ackprg = 'ag --vimgrep'

"Ctrl-Space settings
set nocompatible
set hidden

"Save Ctrl-Space root dirs
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
let g:CtrlSpaceUseMouseAndArrowsInTerm = 1

"Use Ctrl-Space with ag
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

"Ctrl-Space color scheme
hi link CtrlSpaceNormal   PMenu
hi link CtrlSpaceSelected PMenuSel
hi link CtrlSpaceSearch   Search
hi link CtrlSpaceStatus   StatusLine

"have only buffers open
nnoremap <leader>bd :Bufonly<cr>

"find occurences of the searched word
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"easily find where cursor is
set hlsearch

"change cursor shape depending on vim mode: iterm2 for mac
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"airline open files
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

"airline fonts
let g:airline_powerline_fonts = 1

"syntax checking
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint', 'babel-eslint']

" Bind copy to clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>y "+y

" Set 3 lines to the cursor - when moving vertically
set scrolloff=3

