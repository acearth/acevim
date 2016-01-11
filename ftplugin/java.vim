set makeprg=javac\ %
set tabstop=4
set shiftwidth=4
set softtabstop=4

set omnifunc=javacomplete#Complete
set completefunc=javacomplete#CompleteParamsInfo

iabbrev sout System.out.println(
iabbrev psvm{ public static void main(String[] args){

nnoremap <F9> :w<CR>:make<CR>
nnoremap <F10> :!java %< <CR>
