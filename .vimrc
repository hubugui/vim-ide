set tabstop=4
set shiftwidth=4
set autoindent

"ctags
map <silent> <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"cscope
map <silent> <C-F11> :!find $PWD -name *.c -o -name *.cc -o -name *.cpp -o -name *.h -o -name *.py -o -name *.js > cscope.files<CR> :!cscope -bkq -i cscope.files<CR> :cs reset<CR>

"taglist
set tags=tags;
set autochdir
 
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Process_File_Always = 1
let Tlist_Sort_Type = "name"
let Tlist_Show_One_File = 0
let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1
map <silent> <F12> :TlistToggle<cr>

"OmniCppComplete
set nocp
filetyp plugin on

"NerdTree
map <silent> <F9> :NERDTreeToggle<cr>
