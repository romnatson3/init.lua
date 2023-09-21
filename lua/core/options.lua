local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.splitright = true
opt.splitbelow = true

opt.backup = false
opt.swapfile = false

opt.hlsearch = true  -- підсвітка пошуку
opt.incsearch = true  -- інкрементальний пошук
opt.ignorecase = true  -- відключити регистир при пошуці
opt.wrapscan = false  -- відключає круговий прохід при пошуці

-- Explore
vim.g.netrw_banner = 0  -- hide banner above files
vim.g.netrw_liststyle = 3  -- tree instead of plain view
vim.g.netrw_browse_split = 3  -- open file in new tab

opt.colorcolumn = '80'
opt.cursorline = true

opt.foldmethod = 'indent'
opt.foldenable = false

vim.termguicolors = true

vim.scrolloff = 8
vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 50

opt.completeopt = 'menu,menuone,noinsert,longest'

opt.wrap = false
