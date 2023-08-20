"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               

" DEFAULT SETTINGS-------------------------------------------------------- {{{ 

source $VIMRUNTIME/defaults.vim

" INITIAL SETTINGS-------------------------------------------------------- {{{ 
set background=dark
set title titlestring=
set relativenumber number
set mouse=a
set mousehide
set ttyfast
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noerrorbells
set visualbell t_vb=
set noswapfile
set splitright
set splitbelow
set showtabline=4
set autoindent
set smartindent
set backspace=indent,eol,start
set nocompatible
set wildmode=longest,list,full
set showmatch
set autochdir
set hlsearch
set incsearch
set list
set fillchars+=vert:\
set listchars=tab:\ \ ┊
" hi SpecialKey ctermfg=236 ctermbg=none
set ignorecase
set confirm
set linebreak
set cmdheight=1
set ruler
set scrolloff=10
set history=1000
set nowrap
set textwidth=80
set colorcolumn=+1
set cursorline
hi clear CursorLine
hi CursorLine ctermbg=None
hi clear CursorLineNr
hi CursorLineNr ctermfg=Green
set guicursor=a:blinkon1
syntax on
syntax enable
set omnifunc=syntaxcomplete
set omnifunc=htmlcomplete
set omnifunc=csscomplete
set omnifunc=javascriptcomplete
set omnifunc=pythoncomplete
set omnifunc=cppcomplete
set omnifunc=ccomplete
filetype on
filetype indent on
set spell 
set spelllang=en_us
hi SpellLocal ctermfg=red ctermbg=236
hi SpellBad ctermfg=red ctermbg=236
hi SpellCap ctermfg=red ctermbg=236
hi SpellCap ctermfg=red ctermbg=236
hi SpellBad ctermfg=red ctermbg=236
hi SpellLocal ctermfg=red ctermbg=236
hi CocFloating ctermbg=236
hi CocPMenu ctermbg=236
hi EndOfBuffer ctermfg=Green
hi NonText ctermfg=Green
hi VertSplit ctermfg=Green ctermbg=Green
hi PmenuSel ctermfg=White ctermbg=236
" SHORTCUTS======S---------------------------------------------------------{{{
"Using Control Key:
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-h> <Left>
inoremap <c-l> <Right>
inoremap ii <ESC>
nnoremap <C-q> :q!<CR>
nnoremap <c-b> :%bd\|e#<CR>
nnoremap <C-s> :w!<CR>
nnoremap <C-t> :below vertical terminal<CR>
nnoremap <C-d> :Lex<CR>
nnoremap <C-c> :close<CR>
" nnoremap <C-a> :Startify<CR>
nnoremap <C-w> <C-W>w
nnoremap <S-TAB> :bprevious<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <C-h> :help<CR> 
nnoremap <C-u> :call CompileRun()<CR>
nnoremap o o<ESC>
nnoremap O O<ESC>
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
" Using Leader Key:
let mapleader = "\<Space>"
tnoremap <Leader>ma ./
nnoremap <Leader>sh :sh <CR>
nnoremap <Leader>sw :set wrap <CR>
nnoremap <Leader>sn :set nowrap <CR>
nnoremap <Leader>ss :w! <CR>
nnoremap <Leader>cl :!clear <CR>
nnoremap <Leader>ff :find
nnoremap <Leader>re :%s/
nnoremap <Leader>ll :vertical resize +2<CR>
nnoremap <Leader>rr :vertical resize -2<CR>
nnoremap <Leader>sp zg
nnoremap <Leader>ps zug
nnoremap <Leader>bb 0
nnoremap <Leader>ee $
nnoremap <Leader>re <C-r> <CR>
nnoremap <Leader>sa ggVG
nnoremap <Leader>hh :help<CR>
nnoremap <Leader>tp :tabprevious<CR>
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>to :tabonly<CR>
nnoremap <Leader>tb :tab ball<CR>
nnoremap <Leader>tt :terminal<CR>
nnoremap <Leader>vb :vertical ball<CR>
nnoremap <Leader>vs :vertical split<CR>
nnoremap <Leader>ls :ls<CR>
nnoremap <Leader>dd L<CR>zz<CR>
nnoremap <Leader>bp :bprevious<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>bo :%bd\|e#<CR>
nnoremap <Leader>nh :noh<CR>
nnoremap <Leader>py :!clear; python3 %<CR>
nnoremap <Leader>no :w !node<CR>
nnoremap <Leader>so :source %<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>mc :w <CR> :!gcc % -o %< <CR>
nnoremap <Leader>mp :w <CR> :!g++ % -o %< <CR>
nnoremap <Leader>cc :!clear <CR> :!gcc % -o %<&& ./%< <CR>
nnoremap <Leader>pp :!clear <CR> :!g++ % -o %<&& ./%< <CR>
nnoremap <Leader>vi :tab new ~/.vimrc<CR>
nnoremap <Leader>da :1read !date<CR>
nnoremap <Leader>ht :read ~/.vim/templates/html5.html<CR>
nnoremap <Leader>cp :read ~/.vim/templates/c.c<CR>
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
inoremap <silent><expr> <C-y> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"
" STATUS LINE ------------------------------------------------------------ {{{
hi normalcolor guifg=black guibg=green ctermbg=46 ctermfg=0 cterm=bold
hi insertcolor guifg=black guibg=cyan ctermbg=51 ctermfg=0 cterm=bold
hi replacecolor guifg=black guibg=maroon1 ctermbg=165 ctermfg=0 cterm=bold
hi commandcolor guifg=black guibg=yellow ctermbg=11 ctermfg=0 cterm=bold
hi visualcolor guifg=black guibg=orange ctermbg=202 ctermfg=0 cterm=bold
set statusline=
set statusline+=%#insertcolor#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#replacecolor#%{(mode()=='r')?'\ \ REPLACE\ ':''}
set statusline+=%#commandcolor#%{(mode()=='c')?'\ \ COMMAND\ ':''}
set statusline+=%#visualcolor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#normalcolor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#PmenuSel#
set statusline+=\[%n]
set statusline+=\ CWD:\%{getcwd()}
set statusline+=\/%f
set statusline+=\ STATUS\ %{coc#status()}%{get(b:,'coc_current_function','')}
set statusline+=%=
set statusline+=[%M]
set statusline+=\%{&fileformat}
set statusline+=\ %{strlen(&fenc)?&fenc:'none'}
set statusline+=\ %Y
set statusline+=\ %{strftime('%d\-%b\-%y')}
set statusline+=\ W:\%{wordcount().words}
set statusline+=\ D:\%b\ R:\%l/%l\ C:\%c\ %p%%\ 
set laststatus=2
autocmd User CocStatusChange redrawstatus
" CONFIGURATIONS  ----------------------------------------------------- {{{
let g:netrw_liststyle = 0
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_browse_split = 3
let g:netrw_bufsettings="noma nomod nu nobl nowrap ro nornu"
" let g:ascii = [
    " \'    ███╗░░██╗░█████╗░██████╗░██╗░░░██╗██╗███╗░░░███╗',
    " \'    ████╗░██║██╔══██╗██╔══██╗██║░░░██║██║████╗░████║',
    " \'    ██╔██╗██║███████║██║░░██║╚██╗░██╔╝██║██╔████╔██║',
    " \'    ██║╚████║██╔══██║██║░░██║░╚████╔╝░██║██║╚██╔╝██║',
    " \'    ██║░╚███║██║░░██║██████╔╝░░╚██╔╝░░██║██║░╚═╝░██║',
    " \'    ╚═╝░░╚══╝╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝',
    " \]
" 
" let g:startify_custom_header = g:ascii
" let g:startify_custom_footer = startify#fortune#boxed()
" let g:startify_lists = [
  " \ { 'header': ['   MRU:'],            'type': 'files' },
  " \ { 'header': ['   MRU: '. getcwd()], 'type': 'dir' },
  " \ { 'header': ['   Bookmarks:'],      'type': 'bookmarks' },
  " \ { 'header': ['   Commands:'],       'type': 'commands' },
  " \ ]
" 
" let g:startify_bookmarks = [
  " \ { 'a': '~/.vim/backup/.zshrc.bak' },
  " \ { 'b': '~/.vim/backup/.vimrc.bak' },
  " \ { 'p': '~/.vim/templates/c.c' },
  " \ { 'u': '~/.vim/templates/html5.html' },
  " \ { 'v': '~/.vimrc' },
  " \ { 'z': '~/.zshrc' },
  " \ ]
" 
" let g:startify_commands = [
  " \ {'d': ['<directory>',':Lex']},
  " \ {'h': ['<help>',':below vertical help']},
  " \ {'l': ['<layout>',':Lex|:wincmd l|:below vertical terminal']},
  " \ {'t': ['<terminal>',':below vertical terminal']},
  " \ ]
" 
" hi StartifyHeader guifg=Green ctermfg=Green
" hi StartifyFooter guifg=Green ctermfg=Green
" 
" FUNCTIONS  ------------------------------------------------------------ {{{
" function BufferMiddle()
	" lefta vnew
	" wincmd w
	" exec 'vertical resize '. string(&columns *0.80)
" endfunction
" 
" nnoremap <Leader>bm :call BufferMiddle()<CR>

let s:comment_map = { 
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "javascript": '\/\/',
    \   "lua": '--',
    \   "python": '#',
    \   "zsh": '#',
    \   "sh": '#',
    \   "vim": '"',
    \ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
        if getline('.') =~ "^\\s*" . comment_leader . " " 
            " Uncomment the line
            execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
        else 
            if getline('.') =~ "^\\s*" . comment_leader
                " Uncomment the line
                execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
            else
                " Comment the line
                execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
            end
        end
    else
        echo "No comment leader found for filetype"
    end
endfunction

vnoremap <leader>gc :call ToggleComment()<cr>
vnoremap <leader>gu :call ToggleComment()<cr>

" function MyTabLine()
  " let s = ''
  " for i in range(tabpagenr('$'))
                " if i + 1 == tabpagenr()
                  " let s .= '%#TabLineSel#'
                " else
                  " let s .= '%#TabLine#'
                " endif
" 
                " let s .= '%' . (i + 1) . 'T'
" 
                " let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  " endfor
" 
  " let s .= '%#TabLineFill#%T'
" 
  " if tabpagenr('$') > 1
                " let s .= '%=%#TabLine#%999Xclose'
  " endif
" 
  " return s
" endfunction
" 
" function MyTabLabel(n)
                  " let buflist = tabpagebuflist(a:n)
                  " let winnr = tabpagewinnr(a:n)
                  " return buflist[winnr - 1] . ') ' . bufname(buflist[winnr - 1])
" endfunction
" 
" :set tabline=%!MyTabLine()

function CompileRun()
  if &filetype == 'python'
    exec "!clear;python3 %"
  elseif &filetype == 'cpp'
    exec "!clear;g++ % -o %<&& ./%<"
  elseif &filetype == 'c'
    exec "!clear;gcc % -o %<&& ./%<"
  elseif &filetype == 'javascript'
    exec "!clear;node %"
  elseif &filetype == 'sh'
    exec "!clear;sh %"
  endif

endfunction

nnoremap <leader>cr :call CompileRun()<CR>

" function SetIndent()
  " if &filetype == 'html'
    " setlocal tabstop=2
    " setlocal shiftwidth=2
    " setlocal softtabstop=2
    " setlocal showtabline=2
  " endif
" endfunction
" 
" nnoremap <leader>si :call SetIndent()<CR>
