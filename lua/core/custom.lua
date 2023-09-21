vim.cmd[[
fun! g:ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = s:old_mouse
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        echo "Mouse is for terminal"
    endif
endfunction
]]

-- vim.cmd[[
--     " Minimalist-TabComplete-Plugin
--     inoremap <expr> <Tab> TabComplete()
--     fun! TabComplete()
--         if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
--             return "\<C-P>"
--         else
--             return "\<Tab>"
--         endif
--     endfun

--     " Minimalist-AutoCompletePop-Plugin
--     set completeopt=menu,menuone,noinsert,longest
--     inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
--     autocmd InsertCharPre * call AutoComplete()
--     fun! AutoComplete()
--         if v:char =~ '\K'
--             \ && getline('.')[col('.') - 4] !~ '\K'
--             \ && getline('.')[col('.') - 3] =~ '\K'
--             \ && getline('.')[col('.') - 2] =~ '\K' " last char
--             \ && getline('.')[col('.') - 1] !~ '\K'

--             call feedkeys("\<C-P>", 'n')
--         end
--     endfun
-- ]]
