vim.cmd([[
    " Navigate the complete menu items like CTRL+n / CTRL+p would.
    inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
    inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
    " Select the complete menu item like CTRL+y would.
    inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
    inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
    " Cancel the complete menu item like CTRL+e would.
    inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
]])
