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
    use('sainnhe/sonokai')
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
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig'
    }

    use {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path'
    }

    -- use {
    --     'nvim-tree/nvim-tree.lua',
    --     requires = { {'nvim-tree/nvim-web-devicons'} }
    -- }

    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        requires = { 
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim',
        }
    }

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
    
    -- use('nanozuki/tabby.nvim')

    -- use('vim-scripts/AutoComplPop')

    use('lukas-reineke/indent-blankline.nvim')

    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use('github/copilot.vim')

    use('m4xshen/autoclose.nvim')

    use('puremourning/vimspector')
    
    use {'akinsho/toggleterm.nvim', tag = '*',
         config = function()
            require('toggleterm').setup()
        end
    }

    use {'norcalli/nvim-colorizer.lua',
         config = function()
            require('colorizer').setup()
        end
    }

    use({'preservim/tagbar',
        config = function()
            vim.keymap.set('n', '<F7>', ':TagbarToggle<CR>')
        end
    })

end)
