filetype plugin indent on
set nocompatible
set background=dark
set path=$TTFMPATHS
set tags=/home/atomly/ttfm.tags
cs add /home/atomly/ttfm.cscope
set cscopetag
set csto=0
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\><C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\><C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>

" Repeat Mappings
nmap g<C-l> <Plug>ChapaOppositeRepeat
nmap <C-l> <Plug>ChapaRepeat

" Function Movement
nmap fnf <Plug>ChapaNextFunction
nmap fif <Plug>ChapaInFunction
nmap fpf <Plug>ChapaPreviousFunction

" Class Movement
nmap fnc <Plug>ChapaNextClass
nmap fic <Plug>ChapaInClass
nmap fpc <Plug>ChapaPreviousClass

" Method Movement
nmap fnm <Plug>ChapaNextMethod
nmap fim <Plug>ChapaInMethod
nmap fpm <Plug>ChapaPreviousMethod

" Class Visual Select
nmap vnc <Plug>ChapaVisualNextClass
nmap vic <Plug>ChapaVisualThisClass
nmap vpc <Plug>ChapaVisualPreviousClass

" Method Visual Select
nmap vnm <Plug>ChapaVisualNextMethod
nmap vim <Plug>ChapaVisualThisMethod
nmap vpm <Plug>ChapaVisualPreviousMethod

" Function Visual Select
nmap vnf <Plug>ChapaVisualNextFunction
nmap vif <Plug>ChapaVisualThisFunction
nmap vpf <Plug>ChapaVisualPreviousFunction

" Comment Class
nmap cic <Plug>ChapaCommentThisClass
nmap cnc <Plug>ChapaCommentNextClass
nmap cpc <Plug>ChapaCommentPreviousClass

" Comment Method
nmap cim <Plug>ChapaCommentThisMethod
nmap cnm <Plug>ChapaCommentNextMethod
nmap cpm <Plug>ChapaCommentPreviousMethod

" Comment Function
nmap cif <Plug>ChapaCommentThisFunction
nmap cnf <Plug>ChapaCommentNextFunction
nmap cpf <Plug>ChapaCommentPreviousFunction

" Folding Method
nmap zim <Plug>ChapaFoldThisMethod
nmap znm <Plug>ChapaFoldNextMethod
nmap zpm <Plug>ChapaFoldPreviousMethod

" Folding Class
nmap zic <Plug>ChapaFoldThisClass
nmap znc <Plug>ChapaFoldNextClass
nmap zpc <Plug>ChapaFoldPreviousClass

" Folding Function
nmap zif <Plug>ChapaFoldThisFunction
nmap znf <Plug>ChapaFoldNextFunction
nmap zpf <Plug>ChapaFoldPreviousFunction
set titlestring=vim\ --\ %t%(\ %M%)%(\ (%{expand(\"%:~:h\")})%)%(\ %a%)
" set titlestring=vim\ %<%F%<\ %F%t%(\ %M%)%(\ (%{expand(\"%:~:h\")})%)%(\ %a%m%h%w%=%1/%L-%P%)
" set titlestring=vim\ %<%F%(\ %)%m%h%w%=%l/%L-%P 
set statusline=%<%F%(\ %)%m%h%w%=%l/%L-%P 
set laststatus=2

if &term == "screen"
  set t_ts=k
  set t_fs=\
endif
if &term == "screen" || &term == "xterm" || &term == "xterm-color"
  set title
endif

set ruler                  " Give me a ruler, tell me where I am in the file.
set showcmd                " Show me the vi command in the ruler
set showmatch              " Show me matching close braces
set ignorecase             " Case insensitive searching
set smartcase              " Unless I really mean case sensitive
set nolist
set listchars=tab:>_,trail:_,extends:+,precedes:+,nbsp:_,eol:\|

set complete=.,w,b,i,t,u

function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>
