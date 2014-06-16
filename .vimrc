set t_Co=256
let mapleader = ';'
execute pathogen#infect()
syntax on
filetype off
call pathogen#incubate()
call pathogen#helptags()
set nofoldenable
set incsearch
filetype on
filetype plugin on
filetype plugin indent on
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>yd :YcmCompleter GoTo<CR>

" Use flake8
let g:syntastic_python_checkers = ['pyflakes']
"let g:syntastic_python_flake8_args = '--ignore="E501,E302,E261,E701,E241,E126,E127,E128,W801,E228, E113"'


map <leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/opt/ectags/ctags'


set number
set background=light
colorscheme nick_lucius
set spelllang=en_us
nnoremap <C-D> <C-A>

let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
set completeopt=menuone,longest,preview
map <Leader>n <plug>NERDTreeTabsToggle<CR>
nmap <leader>a <Esc>:Ag<Space>
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
 
set ttyfast
set mouse=a
set ttymouse=xterm2
"
"Ipython tmux settings
map <Leader>viq :call VimuxIpy("ipython --pylab=qt")<CR>
map <Leader>vip :call VimuxIpy()<CR>
vmap <silent> <Leader>e :python run_visual_code()<CR>

noremap <silent> <Leader>c :python run_cell(save_position=False, cell_delim='####')<CR>

"automatic spelling switches
iab teh the

set linespace=3
let g:Tex_DefaultTargetFormat='pdf'

"This function remaps the movement keys to move by screen line in regions
"where the text is wrapped.
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

"This is a function that provides a command to move to the next occurrance of
"a bracket-like object and do something. For instance, `din(` would go to the
"next ( and delete the contents. 

onoremap an :<c-u>call <SID>NextTextObject('a')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i')<cr>
 
function! s:NextTextObject(motion)
    echo
    let c = nr2char(getchar())
    exe "normal! f".c."v".a:motion.c
endfunction

let g:vimroom_background = "#ffffff"
let g:vimroom_width = 80

"This command tells latex buffers to insert a newline after a sentence instead
"of a space. This could be problematic in certain cases though.
autocmd Filetype tex,latex inoremap <buffer> .<Space>  .<Enter><C-G>u
"This line stops vim from autoindenting the \item things.
let g:tex_indent_items=0 

map <leader>v :Voomtoggle<CR>

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_semantic_triggers = {'r':['<-', '$'], 'latex':['\']} 
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'tex' : 1,
      \ 'latex' : 1,
      \}

let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

colorscheme pencil
