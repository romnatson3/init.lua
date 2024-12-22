return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local builtin = require('telescope.builtin')
        local themes = require('telescope.themes')

        vim.keymap.set('n', '<leader>f', builtin.find_files, {})
        vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>m', builtin.marks, {})
        -- vim.keymap.set('n', '<leader>p', builtin.registers, {})
        vim.keymap.set('n', '<leader>q', builtin.quickfix, {})
        vim.keymap.set('n', '<leader>qh', builtin.quickfixhistory, {})
        vim.keymap.set('n', 'gr', builtin.lsp_references, {})
        vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})  -- Ctrl-o go back
        vim.keymap.set('n', 'gc', builtin.git_commits, {})

        vim.keymap.set('n', '<leader>B', function()
            builtin.buffers(themes.get_dropdown {
                winblend = 10,
                previewer = false,
                layout_config = { prompt_position = 'bottom', width = 0.3, height = 0.4 }
            })
        end)

        vim.keymap.set('n', '<leader>/', function()
            builtin.current_buffer_fuzzy_find({
                theme = 'dropdown',
                winblend = 0,
                previewer = false,
                layout_config = { prompt_position = 'bottom', width = 0.5, height = 0.7 },
                sorter = require('telescope.sorters').get_substr_matcher({}),
            })
        end)

        vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = '#ff9900', bold = true })

        -- vim.keymap.set('n', '<leader>G', builtin.grep_string, {})

        vim.keymap.set('n', '<leader>G', function()
            builtin.grep_string({ use_regex=true })
        end)

        -- vim.keymap.set('n', '<leader>G', function()
        --     builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)

        vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

        vim.keymap.set('n', '<leader>D', builtin.diagnostics, {})

        require('telescope').setup {
            defaults = { 
                file_ignore_patterns = { 
                    ".git/",
                    "env/",
                    ".pyc$"
                }
            },
            pickers = {
                find_files = {
                    hidden = true,
                    no_ignore = true
                },
                live_grep = {
                    additional_args = {'--hidden'}
                    -- additional_args = {'--hidden', '--fixed-strings'}
                }
            }
        }
    end
} 
