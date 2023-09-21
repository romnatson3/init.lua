vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

vim.opt.undodir = os.getenv("HOME") .. '/.local/share/undodir'
vim.opt.undofile = true
