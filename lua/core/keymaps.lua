vim.g.mapleader = ' '

vim.keymap.set('n', '<F5>', '<cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<Tab>', '<C-w>w')
vim.keymap.set('n', '<C-n>', ':tabnew<CR>')
vim.keymap.set({'n','v','i'}, '<F2>', '<esc>:w<CR>')
vim.keymap.set({'n','v','i'}, '<F10>', '<esc>:wq<CR>')
vim.keymap.set({'n','v','i'}, '<F12>', '<esc>:q!<CR>')
vim.keymap.set('n', 'bg', ':bnext<CR>')
vim.keymap.set('n', '<leader>c', vim.cmd.bdelete)
vim.keymap.set({'n','v'}, 'p', 'pgvy')
vim.keymap.set({'n','v'}, '<F1>', ':nohlsearch<CR>')
vim.keymap.set({'n','i', 'v'}, '<F9>', ':call ToggleMouse()<CR>')
vim.keymap.set('n', '<leader>d', ':TroubleToggle<CR>')

vim.keymap.set('v', 'L', '>gv')
vim.keymap.set('v', 'H', '<gv')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
