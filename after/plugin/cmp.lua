local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
    -- completion = {
    --     autocomplete = false
    -- },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<Up>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
        -- ['<Down>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Left>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    confirmation = { completeopt = 'menu,menuone,noinsert,select' },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp', keyword_length = 2},
        {name = 'buffer', keyword_length = 2, option = {get_bufnrs = function() return vim.api.nvim_list_bufs() end}},
        {name = 'luasnip', keyword_length = 2},
    },
    formatting = {
        fields = {'menu', 'abbr', 'kind'},
        -- format = function(entry, item)
        --     local menu_icon = {
        --         nvim_lsp = 'λ',
        --         luasnip = '⋗',
        --         buffer = 'Ω',
        --         path = '🖫',
        --     }
        --     item.menu = menu_icon[entry.source.name]
        --     return item
        -- end,
    },
})

      
