set makeprg=gcc\ -o\ %<\ %
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cindent
nnoremap <F9> :w<CR>:make<CR>
nnoremap <F10> :! ./% <CR>
