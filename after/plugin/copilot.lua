vim.api.nvim_set_keymap('i', '<C-f>', 'copilot#Accept("<CR>")', {silent=true,script=true,expr=true})
vim.api.nvim_set_keymap('i', '<C-]>', '<Plug>(copilot-dismiss)', {})
vim.api.nvim_set_keymap('n', '<F4>', ':Copilot panel<CR>', {silent=true})
vim.api.nvim_set_keymap('i', '<F4>', '<Plug>(copilot-suggest)', {})
vim.api.nvim_set_keymap('i', '<F3>', '<Plug>(copilot-next)', {})

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
