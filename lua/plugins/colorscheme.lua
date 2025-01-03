return {
    {
        {
            "folke/tokyonight.nvim",
            lazy = false,
            priority = 1000,
            opts = {},
            config = function()
                -- vim.cmd('colorscheme tokyonight')
            end
        },

        {
            'sainnhe/sonokai' ,
            enabled = true,
            config = function()
                vim.g.sonokai_style = 'maia' -- default, shusia, atlantis, andromeda, maia, espresso
                -- vim.cmd('colorscheme sonokai')
            end
        },

        {
            "catppuccin/nvim",
            name = "catppuccin",
            priority = 1000,
            config = function()
                -- vim.cmd('colorscheme catppuccin')
            end
        },

        {
            'projekt0n/github-nvim-theme',
            name = 'github-theme',
            lazy = false, -- make sure we load this during startup if it is your main colorscheme
            priority = 1000, -- make sure to load this before all the other start plugins
            config = function()
                require('github-theme').setup({
                    -- ...
                })

                -- vim.cmd('colorscheme github_dark_dimmed')
            end,
        },

        { 'rebelot/kanagawa.nvim' },

        { 'folke/tokyonight.nvim' },

        {
            'rose-pine/neovim',
            config = function()
                -- vim.cmd('colorscheme rose-pine')
            end
        },

        {
            'ellisonleao/gruvbox.nvim',
            enabled = true,
            lazy = false,
            priority = 1000,
            config = function()
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
            end
        },
    }
}


