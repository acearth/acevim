" Settings for run standalone file
if has("autocmd")
        autocmd FileType c setlocal makeprg=gcc\ %\ &&\ ./a.out " set makeprg=gcc\ -o\ %<\ %\ &&\ ./%<
        autocmd FileType cpp setlocal makeprg=g++\ %\ &&\ ./a.out
        autocmd FileType java setlocal makeprg=javac\ %\ &&\ java\ %<
        autocmd FileType javascript setlocal makeprg=node\ %
        autocmd FileType python setlocal makeprg=python\ %
        autocmd FileType ruby setlocal makeprg=ruby\ %
        autocmd FileType sh setlocal makeprg=./%
        autocmd FileType vim setlocal makeprg=source\ %
endif

" Settings for indent
if has("autocmd")
        autocmd FileType javascript,c,cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
        autocmd FileType c,cpp setlocal cindent
        autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 
        autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab 
        autocmd FileType groovy setlocal smartindent
endif
