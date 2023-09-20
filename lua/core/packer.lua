-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- colorscheme
    use('ellisonleao/gruvbox.nvim')
    use({
        'catppuccin/nvim',
        as = 'catppuccin'
    })
    use('rebelot/kanagawa.nvim')
    use('folke/tokyonight.nvim')
    use({
        'rose-pine/neovim',
        as = 'rose-pine'
    })

    use({
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    })
    use('nvim-treesitter/playground')

    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-commentary')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { {'nvim-tree/nvim-web-devicons'} }
    }

    -- use {
    --     'vim-airline/vim-airline',
    --     requires = { {'vim-airline/vim-airline-themes'} }
    -- }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'romgrk/barbar.nvim',
        requires = {
            {'nvim-tree/nvim-web-devicons'},
            {'lewis6991/gitsigns.nvim' },
        }
    }

    -- use('vim-scripts/AutoComplPop')

    use('m4xshen/autoclose.nvim')

    use('lukas-reineke/indent-blankline.nvim')

    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use('roxma/vim-tmux-clipboard')

    use {
        'kalekundert/vim-coiled-snake',
        requires = { 'Konfekt/FastFold' }
    }

    use('github/copilot.vim')
end)
