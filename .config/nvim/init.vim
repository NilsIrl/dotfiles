
function! PackInit() abort
	packadd minpac
	call minpac#init()
	call minpac#add('christoomey/vim-tmux-navigator')
	call minpac#add('jeffkreeftmeijer/vim-numbertoggle')
	call minpac#add('luochen1990/rainbow')
	call minpac#add('editorconfig/editorconfig-vim')
endfunction
command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

let g:rainbow_active = 1

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>

set number relativenumber
set tabstop=4 shiftwidth=4
set mouse=a
