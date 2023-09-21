require("toggleterm").setup{
    size = 20,
    open_mapping = [[<m-0>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = 'horizontal',
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = 'single',
        winblend = 0,
        highlights = {
            border = 'Normal',
            background = 'Normal',
        },
    },
}

vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')

function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<M-w>', [[<C-\><C-n><C-w>w]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"
