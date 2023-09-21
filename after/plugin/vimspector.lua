vim.opt.undodir = os.getenv("HOME") .. '/.local/share/nvim/site/pack/packer/start/vimspector'
vim.g.vimspector_sidebar_width = 75
vim.g.vimspector_bottombar_height = 15

vim.keymap.set('n', '<leader><F9>', ':call vimspector#ToggleBreakpoint()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F12>', ':call vimspector#Reset()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F1>', ':call vimspector#ClearBreakpoints()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F5>', ':call vimspector#Launch()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F6>', ':call vimspector#Continue()<CR>', {silent = true})
