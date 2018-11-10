set expandtab
set ts=4
set shiftwidth=4
set paste
set hlsearch
set cursorline
syntax on
set showmatch
"相对行<F8>切换
nnoremap <silent> <F8> :set nonu! norelativenumber!<CR>

"默认打开Taglist 
"let Tlist_Auto_Open=1 
"""""""""""""""""""""""""""""" 
" Tag list (ctags) 
"""""""""""""""""""""""""""""""" 
let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的 
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR> 
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR> 
