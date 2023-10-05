-- vim.g.sonokai_style = 'maia' -- default, shusia, atlantis, andromeda, maia, espresso
-- vim.cmd('colorscheme sonokai')
-- vim.cmd('colorscheme rose-pine-moon')


-- setup must be called before loading the colorscheme
-- Default options:
require('gruvbox').setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = true,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = 'hard', -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = true,
})
vim.cmd('colorscheme gruvbox')


-- set colorscheme specific highlights if colorscheme is gruvbox
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#4e4e4e' })
vim.api.nvim_set_hl(0, 'DiagnosticSignError', { bg = 'none', fg = '#fb4934' })
vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', { bg = 'none', fg = '#fabd2f' })
vim.api.nvim_set_hl(0, 'DiagnosticSignHint', { bg = 'none', fg = '#8ec07c' })
