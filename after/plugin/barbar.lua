require('barbar').setup({
    -- Enable/disable animations
    animation = true,

    -- Automatically hide the tabline when there are this many buffers left.
    -- Set to any value >=0 to enable.
    auto_hide = false,

    -- Enable/disable current/total tabpages indicator (top right corner)
    tabpages = true,

    -- Enables/disable clickable tabs
    --  - left-click: go to buffer
    --  - middle-click: delete buffer
    clickable = true,

    -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
    -- Valid options are 'left' (the default), 'previous', and 'right'
    focus_on_close = 'left',

    -- Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
    hide = {extensions = false, inactive = false},

    -- Disable highlighting alternate buffers
    highlight_alternate = false,

    -- Disable highlighting file icons in inactive buffers
    highlight_inactive_file_icons = false,

    -- Enable highlighting visible buffers
    highlight_visible = true,

    icons = {
        -- Configure the base icons on the bufferline.
        -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
        buffer_index = false,
        buffer_number = false,
        button = '',
        -- button = '',
        filetype = {
            -- Sets the icon's highlight group.
            -- If false, will use nvim-web-devicons colors
            custom_colors = true,

            -- Requires `nvim-web-devicons` if `true`
            enabled = true,
        },

        separator = {left = '', right = ''},
        -- separator = {left = '▎', right = ''},

        -- If true, add an additional separator at the end of the buffer list
        separator_at_end = false,

        -- Configure the icons on the bufferline when modified or pinned.
        -- Supports all the base icon options.
        modified = {button = ''},
        -- modified = {button = '●'},
        pinned = {button = '', filename = true},

        -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
        preset = 'default',

        -- Configure the icons on the bufferline based on the visibility of a buffer.
        -- Supports all the base icon options, plus `modified` and `pinned`.
        alternate = {filetype = {enabled = false}},
        current = {buffer_index = false},
        inactive = {
            button = '',
            separator = {left = '', right = ''},
        },
        -- inactive = {button = '×'},
        visible = {modified = {buffer_number = false}},
    },

    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to insert after current buffer.
    insert_at_end = true,
    insert_at_start = false,

    -- Sets the maximum padding width with which to surround each tab
    maximum_padding = 1,

    -- Sets the minimum padding width with which to surround each tab
    minimum_padding = 1,

    -- Sets the maximum buffer name length.
    maximum_length = 30,

    -- Sets the minimum buffer name length.
    minimum_length = 0,
})

vim.keymap.set('n', '<leader>C', ':BufferCloseAllButCurrent<CR>')

-- vim.api.nvim_set_hl(0, 'BufferCurrentMod', {link = 'BufferDefaultCurrent'})
vim.api.nvim_set_hl(0, 'BufferCurrent', { bg = '#5f5faf', fg='#eeeeee', bold=true, underline=false})
vim.api.nvim_set_hl(0, 'BufferCurrentMod', { bg = '#5f5faf', fg='#d95858'})
vim.api.nvim_set_hl(0, 'BufferCurrentIcon', { bg = '#5f5faf', fg='#5fafd7'})
vim.api.nvim_set_hl(0, 'BufferCurrentSign', { bg = '#5f5faf', })
