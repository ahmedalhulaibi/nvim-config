" Set tab size
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" Vim-go plugin settings


let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_term_enabled = 1
let g:go_list_type = "quickfix"
let g:go_addtags_transform = "camelcase"

" Vim-go plugin key maping
nmap <leader>r <Plug>(go-run)
nmap <leader>b <Plug>(go-build)
nmap <leader>t <Plug>(go-test)
nmap <leader>c <Plug>(go-coverage)
nmap <Leader>e <Plug>(go-rename)

" Syntastic linters
let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
