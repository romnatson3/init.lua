-- set colorscheme with protected call
-- in case it isn't installed

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
	print("Colorscheme not found, defaulting to builtin")
    vim.cmd([[colorscheme desert]])
	return
end

vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#3c3836' })
vim.api.nvim_set_hl(0, 'DiagnosticSignError', { bg = 'none', fg = '#fb4934' })
vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', { bg = 'none', fg = '#fabd2f' })
vim.api.nvim_set_hl(0, 'DiagnosticSignHint', { bg = 'none', fg = '#8ec07c' })
