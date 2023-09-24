vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.hlsearch = true  -- підсвітка пошуку
vim.opt.incsearch = true  -- інкрементальний пошук
vim.opt.ignorecase = true  -- відключити регистир при пошуці
vim.opt.wrapscan = false  -- відключає круговий прохід при пошуці

-- Explore
vim.g.netrw_banner = 0  -- hide banner above files
vim.g.netrw_liststyle = 3  -- tree instead of plain view
vim.g.netrw_browse_split = 3  -- open file in new tab

vim.opt.colorcolumn = '80'
vim.opt.cursorline = true

vim.opt.foldmethod = 'indent'
vim.opt.foldenable = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 50

vim.opt.completeopt = 'menu,menuone,noinsert,longest'

vim.opt.wrap = false

vim.opt.listchars = 'eol:↲,tab:→→,trail:•,nbsp:↔'
