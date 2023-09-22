vim.keymap.set('i', '<C-f>', 'copilot#Accept("<CR>")', {silent=true,script=true,expr=true,replace_keycodes = false})
vim.keymap.set('i', '<C-]>', '<Plug>(copilot-dismiss)', {})
vim.keymap.set('n', '<F4>', ':Copilot panel<CR>', {silent=true})
vim.keymap.set('i', '<F4>', '<Plug>(copilot-suggest)', {})
vim.keymap.set('i', '<F3>', '<Plug>(copilot-next)', {})

vim.api.nvim_set_hl(0, 'CopilotSuggestion', { bg = 'none', fg = '#555555' })

-- vim.g.copilot_filetypes = {
--   ["*"] = false,
--   ["javascript"] = true,
--   ["typescript"] = true,
--   ["lua"] = true,
--   ["rust"] = true,
--   ["c"] = true,
--   ["c#"] = true,
--   ["c++"] = true,
--   ["go"] = true,
--   ["python"] = true,
-- }
