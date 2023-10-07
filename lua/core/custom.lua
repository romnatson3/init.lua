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

vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function(args)
        path = vim.v.argv[3]
        if path ~= nil then
            result = vim.api.nvim_command_output("!file " .. path)
            if string.match(result, ":%sdirectory") then
                vim.cmd("Neotree " .. path)
                pcall(vim.api.nvim_buf_delete, args.buf, {force=true})
            end
        end
    end
})

-- :%!jq
vim.cmd([[command! FormatJson %!python -m json.tool ]])
vim.cmd([[command! FormatXml %!python -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())" ]])
