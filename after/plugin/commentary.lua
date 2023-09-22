local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'gbb', ':Commentary<CR>', opts)
vim.keymap.set('v', 'gb', ':Commentary<CR>', opts)
