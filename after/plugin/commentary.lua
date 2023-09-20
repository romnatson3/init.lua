local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', 'gbb', ':Commentary<CR>', opts)
map('v', 'gb', ':Commentary<CR>', opts)
