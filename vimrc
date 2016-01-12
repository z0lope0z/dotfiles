"call pathogen#incubate()
call pathogen#infect('bundle/{}')
call pathogen#infect()
call pathogen#helptags()
syntax on
"auto reload .vimrc
autocmd! bufwritepost .vimrc source %
"rebind leader key
let mapleader=","
set ttymouse=xterm2
"encoding for special chars
scriptencoding utf-8
set encoding=utf-8
set hidden "hidden buffers enabled
set number "line number
nnoremap <F3> :set nonumber!<CR>
set mouse=a "mouse clickable
colorscheme darcula
"search improvements
set hlsearch
set incsearch
set ignorecase
set smartcase
"python
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set modifiable
set backspace=indent,eol,start 
set linebreak
set foldmethod=indent
set foldlevel=99
cmap w!! %!sudo tee > /dev/null %
nmap <C-e> :e#<CR>
imap jk <Esc> 
vmap m, <Esc> 
vno ~/.xmobarrcM Ìmap jk <Esc> 
map <leader>c <c-_><c-_>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
"inoremap <Nul> <C-n>
"quick movements
inoremap AA <Esc>I
inoremap BB <Esc>Bi
inoremap EE <Esc>A
inoremap OO <Esc>o
inoremap CC <Esc>C
inoremap WW <Esc>w
inoremap DD <Esc>dd
inoremap UU <Esc>u
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"quick save
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
"pasting
set pastetoggle=<F2>
"nerd tree
nmap <silent> <special> <C-t> :NERDTreeToggle<RETURN>
"close nerdtree if it's the only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"sudo save
"command W w !sudo tee % >/dev/null
"sorting
vnoremap <Leader>s :sort<CR>
"easier viewing of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation
"useful settings
set history=700
set undolevels=700
"disable backup files and swp files
set nobackup
set nowritebackup
set noswapfile
"white space viewing
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\
set list
set clipboard=unnamedplus
autocmd vimenter * NERDTree | wincmd p
"split
set splitbelow
set splitright
"search
nmap <leader>a <Esc>:Ack!
"add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
" experimental
"django stuff
let g:tcommentguessfiletype_htmldjango = 1
"show some autocomplete options in status bar
set wildmenu
set smarttab
au InsertEnter * hi StatusLine term=reverse ctermbg=22 gui=bold,reverse guisp=Green
au InsertLeave * hi StatusLine term=reverse ctermbg=24 gui=undercurl guisp=Blue

" Jump to the next or previous line that has the same level or a lower
" level of indentation than the current line.
"
" exclusive (bool): true: Motion is exclusive
" false: Motion is inclusive
" fwd (bool): true: Go to next line
" false: Go to previous line
" lowerlevel (bool): true: Go to line with lower indentation level
" false: Go to line with the same indentation level
" skipblanks (bool): true: Skip blank lines
" false: Don't skip blank lines
function! NextIndent(exclusive, fwd, lowerlevel, skipblanks)
  let line = line('.')
  let column = col('.')
  let lastline = line('$')
  let indent = indent(line)
  let stepvalue = a:fwd ? 1 : -1
  while (line > 0 && line <= lastline)
    let line = line + stepvalue
    if ( ! a:lowerlevel && indent(line) == indent ||
          \ a:lowerlevel && indent(line) < indent)
      if (! a:skipblanks || strlen(getline(line)) > 0)
        if (a:exclusive)
          let line = line - stepvalue
        endif
        exe line
        exe "normal " column . "|"
        return
      endif
    endif
  endwhile
endfunction

" Moving back and forth between lines of same or lower indentation.
nnoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
nnoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
nnoremap <silent> [L :call NextIndent(0, 0, 1, 1)<CR>
nnoremap <silent> ]L :call NextIndent(0, 1, 1, 1)<CR>
vnoremap <silent> [l <Esc>:call NextIndent(0, 0, 0, 1)<CR>m'gv''
vnoremap <silent> ]l <Esc>:call NextIndent(0, 1, 0, 1)<CR>m'gv''
vnoremap <silent> [L <Esc>:call NextIndent(0, 0, 1, 1)<CR>m'gv''
vnoremap <silent> ]L <Esc>:call NextIndent(0, 1, 1, 1)<CR>m'gv''
onoremap <silent> [l :call NextIndent(0, 0, 0, 1)<CR>
onoremap <silent> ]l :call NextIndent(0, 1, 0, 1)<CR>
onoremap <silent> [L :call NextIndent(1, 0, 1, 1)<CR>
onoremap <silent> ]L :call NextIndent(1, 1, 1, 1)<CR>
""" KEEP THIS AT THE BOTTOM """
"swap colon and semi-colon
" nnoremap ; :
" nnoremap : ;
