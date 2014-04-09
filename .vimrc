let mapleader = ';'
execute pathogen#infect()
syntax on
filetype off
call pathogen#incubate()
call pathogen#helptags()
set nofoldenable
filetype on
filetype plugin on
filetype plugin indent on
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
set completeopt=menuone,longest,preview
map <leader>n :NERDTreeToggle<CR>
nmap <leader>a <Esc>:Ack!
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
set hidden
set statusline+=%{fugitive#statusline()}
set wildmenu
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Always show line numbers, but only in current window.
" set number
au WinEnter * :setlocal number
au WinLeave * :setlocal nonumber
"
" Automatically resize vertical splits.
au WinEnter * :set winfixheight
au WinEnter * :wincmd =

set wrap
set linebreak
set nolist  " list disables linebreak

set textwidth=0
set wrapmargin=0
set formatoptions+=l
set tabstop=4
set shiftwidth=4
set expandtab
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
let g:tex_flavor = "tex"

" Lines added by the Vim-R-plugin command :RpluginConfig (2014-Mar-28 19:01):
set nocompatible
" Change the <LocalLeader> key:
let maplocalleader = ","
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif
" Press the space bar to send lines (in Normal mode) and selections to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" There are hundreds of color schemes for Vim on the internet, but you can
" start with color schemes already installed.
" Click on GVim menu bar "Edit / Color scheme" to know the name of your
" preferred color scheme, then, remove the double quote (which is a comment
" character, like the # is for R language) and replace the value "not_defined"
" below:
"colorscheme not_defined
" 
set ttyfast
set mouse=a
set ttymouse=xterm2

map <Leader>vip :call VimuxIpy("ipython --pylab=qt")<CR>
vmap <silent> <Leader>e :python run_visual_code()<CR>

noremap <silent> <Leader>c :python run_cell(save_position=False, cell_delim='####')<CR>

iab teh the
set linespace=3
let g:Tex_DefaultTargetFormat='pdf'

function! ScreenMovement(movement)
    if &wrap
        return "g" . a:movement
    else
        return a:movement
    endif
endfunction
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")
