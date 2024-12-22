return {
    'preservim/tagbar',
    config = function()
        vim.keymap.set('n', '<F7>', ':TagbarToggle<CR>')
    end
}
