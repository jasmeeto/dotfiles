set encoding=utf8
set foldmethod=syntax
map <F2> :NERDTreeToggle<cr>
nmap <F8> :TagbarToggle<CR>
imap jj <Esc>

let cscope_main_loc="~/workspace/main/firmware/cscope.out"
echo "doing something"
if filereadable(expand(cscope_main_loc))
    exec "cs add " . cscope_main_loc
else
    echo "Couldn't load: " . cscope_main_loc
endif
echo "done something"

" Supertab settings
" supertab + eclim == java win
let g:SuperTabDefaultCompletionTypeDiscovery = [
\ "&completefunc:<c-x><c-u>",
\ "&omnifunc:<c-x><c-o>",
\ ]
let g:SuperTabLongestHighlight = 1

syntax on
syntax enable
set background=dark
"colorscheme solarized
"colorscheme molokai
colorscheme Monokai

set t_Co=256
"let g:solarized_termcolors=16

set number
set mouse=a

"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
"autocmd BufWritePre *.py :%s/\s\+$//e
"let Tlist_Ctags_Cmd = '~/extra/ctags-5.8'

autocmd VimEnter * NERDTree
