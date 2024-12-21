-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use {'wbthomason/packer.nvim'}

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        requires = { {'nvim-lua/plenary.nvim'} }
    } 

    -- colorscheme
    use {'sainnhe/sonokai'}
    use {'ellisonleao/gruvbox.nvim'}
    use {
        'catppuccin/nvim',
        as = 'catppuccin'
    }
    use {'rebelot/kanagawa.nvim'}
    use {'folke/tokyonight.nvim'}
    use {
        'rose-pine/neovim',
        as = 'rose-pine'
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {'nvim-treesitter/playground'}

    use {'ThePrimeagen/harpoon'}
    use {'mbbill/undotree'}
    use {'tpope/vim-commentary'}

    use {'NeogitOrg/neogit',
        requires = {
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim',
            'nvim-telescope/telescope.nvim'
        }
    }

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

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

    use {'lukas-reineke/indent-blankline.nvim'}

    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use {'github/copilot.vim'}

    use {'mfussenegger/nvim-dap'}
    use {'mfussenegger/nvim-dap-python'}
    use {'Weissle/persistent-breakpoints.nvim'}
    use {
        'rcarriga/nvim-dap-ui',
        requires = {'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio'} 
    }
    
    use {'norcalli/nvim-colorizer.lua',
         config = function()
            require('colorizer').setup()
        end
    }

    use {'preservim/tagbar',
        config = function()
            vim.keymap.set('n', '<F7>', ':TagbarToggle<CR>')
        end
    }

    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    use {'chentoast/marks.nvim'}

    use {'kien/ctrlp.vim'}

end)
