vim.cmd[[
    imap <F3> <Plug>(copilot-next)
    " imap <M-[> <Plug>(copilot-previous)
    " imap <M-\> <Plug>(copilot-suggest)
    imap <C-]> <Plug>(copilot-dismiss)

    imap <F4> <Esc>:Copilot panel<CR>
    nmap <F4> :Copilot panel<CR>

    imap <silent><script><expr> <C-f> copilot#Accept("\<CR>")
    let g:copilot_no_tab_map = v:true

    highlight CopilotSuggestion guifg=#555555 ctermfg=8
]]
