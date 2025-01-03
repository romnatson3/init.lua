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

-- :%!jq
vim.cmd([[command! FormatJson %!python -m json.tool ]])
vim.cmd([[command! FormatXml %!python -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())" ]])


vim.fn.sign_define("DiagnosticSignError", {text = "", texthl = "DiagnosticSignError"})
-- vim.fn.sign_define("DiagnosticSignError", {text = "✘", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = "", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = "", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = "󰌵", texthl = "DiagnosticSignHint"})

-- vim.api.nvim_set_hl(0, "DiagnosticVirtualText", { fg = "#4e4e4e" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualText", { fg = "#00ff80", underline=true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { link = "DiagnosticVirtualText" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { link = "DiagnosticVirtualText" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { link = "DiagnosticVirtualText" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { link = "DiagnosticVirtualText" })


-- vim.opt.showtabline = 0  -- hide tabline, set to 2 to show
vim.api.nvim_set_hl(0, 'BufferLineFill', { fg = '#1c1e1f', bg = '#262626' })


-- set colorscheme specific highlights if colorscheme is gruvbox
-- vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })

if vim.g.colors_name == 'gruvbox' then
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#4e4e4e' })
    vim.api.nvim_set_hl(0, 'DiagnosticSignError', { bg = 'none', fg = '#fb4934' })
    vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', { bg = 'none', fg = '#fabd2f' })
    vim.api.nvim_set_hl(0, 'DiagnosticSignHint', { bg = 'none', fg = '#8ec07c' })
end
