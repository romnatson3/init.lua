return {
    'TimUntersberger/neogit',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'sindrets/diffview.nvim',
        'nvim-telescope/telescope.nvim'
    },
    config = function()
        require('neogit').setup()
        vim.keymap.set('n', '<leader>N', ':Neogit<CR>')
    end
}
