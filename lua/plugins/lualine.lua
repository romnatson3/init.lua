return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                -- theme = 'seoul256',
                theme = 'gruvbox',
                -- theme = 'rose-pine',
                -- theme = 'sonokai',
                -- component_separators = { left = '', right = ''},
                -- section_separators = { left = '', right = ''},
                -- section_separators = { left = '', right = '' },
                -- component_separators = { left = '', right = '' },
                section_separators = '',
                component_separators = '',
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {{
                    'filename',
                    file_status = true,
                    path = 2,
                    symbols = {
                        modified = '[+]',
                        readonly = '[-]',
                        unnamed = '[No Name]',
                        newfile = '[New]'
                    }
                }},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {
                -- lualine_a = {{
                --     'tabs',
                --     -- Maximum width of each tab. The content will be shorten dynamically (example: apple/orange -> a/orange)
                --     tab_max_length = 50,
                --     -- Maximum width of tabs component.
                --     max_length = vim.o.columns / 1,
                --     -- Note:
                --     -- It can also be a function that returns
                --     -- the value of `max_length` dynamically.
                --     -- 0: Shows tab_nr
                --     -- 1: Shows tab_name
                --     -- 2: Shows tab_nr + tab_name
                --     mode = 1, 

                --     -- 0: just shows the filename
                --     -- 1: shows the relative path and shorten $HOME to ~
                --     -- 2: shows the full path
                --     -- 3: shows the full path and shorten $HOME to ~
                --     path = 0, 

                --     -- Automatically updates active tab color to match color of other components (will be overidden if buffers_color is set)
                --     use_mode_colors = false,

                --     tabs_color = {
                --         -- Same values as the general color option can be used here.
                --         -- active = {fg='#e2e2e3', bg='#5f5faf'},     -- Color for active tab.
                --         -- inactive = {}, -- Color for inactive tab.
                --     },

                --     -- Shows a symbol next to the tab name if the file has been modified.
                --     show_modified_status = false,
                --     symbols = {
                --         modified = '[+]',  -- Text to show when the file is modified.
                --     },

                --     fmt = function(name, context)
                --         -- Show + if buffer is modified in tab
                --         local buflist = vim.fn.tabpagebuflist(context.tabnr)
                --         local winnr = vim.fn.tabpagewinnr(context.tabnr)
                --         local bufnr = buflist[winnr]
                --         local mod = vim.fn.getbufvar(bufnr, '&mod')
                --         return name .. (mod == 1 and ' ' or '')
                --     end
                -- }}
            },
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }

    end
}
