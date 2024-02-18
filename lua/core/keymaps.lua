vim.g.mapleader = ' '

vim.keymap.set('n', '<F5>', '<cmd>Neotree toggle<CR>')
-- vim.keymap.set('n', '<F5>', '<cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<Tab>', '<C-w>w')
vim.keymap.set('n', '<C-n>', ':tabnew<CR>')
vim.keymap.set({'n','v','i'}, '<F2>', '<esc>:w<CR>')
vim.keymap.set({'n','v','i'}, '<F10>', '<esc>:wq<CR>')
vim.keymap.set({'n','v','i'}, '<F12>', '<esc>:q!<CR>')
-- vim.keymap.set('n', 'gt', ':bnext<CR> \\| :tabnext<CR>')
vim.keymap.set('n', 'gt', ':tabnext<CR>')
vim.keymap.set('n', '<leader>c', vim.cmd.bdelete)
vim.keymap.set({'n','v'}, '<F1>', ':nohlsearch<CR>')
vim.keymap.set({'n','i','v'}, '<F9>', ':call ToggleMouse()<CR>')
vim.keymap.set({'n','i','v'}, '<F8>', '<esc>:set invpaste paste?<CR>')
vim.keymap.set('n', '<leader>d', ':TroubleToggle<CR>')

vim.keymap.set('v', 'L', '>gv')
vim.keymap.set('v', 'H', '<gv')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- paste over a selection it will replace the default register with the contents of the selection
vim.keymap.set('x', 'p', [["_dP]])
-- vim.keymap.set('v', 'p', 'pgvy')

-- copy to system clipboard
vim.keymap.set({'n', 'v'}, 'y', [["+y]])

-- vim.keymap.set('n', '<C-z>', ':vertical resize -1<CR>')
-- vim.keymap.set('n', '<C-x>', ':vertical resize +1<CR>')
-- vim.keymap.set('n', '<C-j>', ':horizontal resize -1<CR>')
-- vim.keymap.set('n', '<C-k>', ':horizontal resize +1<CR>')
