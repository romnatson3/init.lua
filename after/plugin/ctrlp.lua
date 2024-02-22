vim.cmd([[
" let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_cmd = 'CtrlPMixed'
" let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:100'
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/](\.git|env)$',
\ 'file': '\v\.(exe|so|dll|pyc)$',
\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
\ }
" let g:ctrlp_user_command = 'find %s -type f -not -path "*/.git/*"'

"<F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
"<c-f> and <c-b> to cycle between modes.
"<c-d> to switch to filename only search instead of full path.
"<c-r> to switch to regexp mode.
"<c-j>, <c-k> or the arrow keys to navigate the result list.
"<c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
"<c-n>, <c-p> to select the next/previous string in the prompt's history.
"<c-y> to create a new file and its parent directories.
"<c-z> to mark/unmark multiple files and <c-o> to open them.
]])
