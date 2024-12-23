return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    enabled = true,

    version = 'v0.*',

    opts = {
      keymap = {
        preset = 'enter',
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide', 'fallback' },
        ['<Left>'] = { 'hide', 'fallback' },
        ['<CR>'] = { 'accept', 'fallback' },
        -- ['<Right>'] = { 'select_and_accept' },  -- key stop working in insert mode

        -- ['<Tab>'] = { 'snippet_forward', 'fallback' },
        -- ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<C-p>'] = { 'select_prev', 'fallback' },
        ['<C-n>'] = { 'select_next', 'fallback' },

        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
      },

      completion = {
        -- 'prefix' will fuzzy match on the text before the cursor
        -- 'full' will fuzzy match on the text before *and* after the cursor
        -- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'
        keyword = { range = 'full' },

        -- Disable auto brackets
        -- NOTE: some LSPs may add auto brackets themselves anyway
        accept = { auto_brackets = { enabled = false }, },

        -- Insert completion item on selection, don't select by default
        list = { selection = 'auto_insert' },

        menu = {
          -- Don't automatically show the completion menu
          auto_show = true,
          border = 'rounded',

          -- nvim-cmp style menu
          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind" },
            },
          }
        },

        -- Show documentation when selecting a completion item
        documentation = {
            auto_show = false,
            auto_show_delay_ms = 500,
            window = { border = 'rounded' },
        },

        -- Display a preview of the selected item on the current line
        ghost_text = { enabled = true },
      },

      sources = {
        -- Remove 'buffer' if you don't want text completions, by default it's only enabled when LSP returns no items
        default = { 'lsp', 'path', 'buffer'},
        providers = {
          lsp = {
            name = 'LSP',
            module = 'blink.cmp.sources.lsp',
            fallbacks = { 'buffer' },
            --- NOTE: All of these options may be functions to get dynamic behavior
            --- See the type definitions for more information
            enabled = true, -- Whether or not to enable the provider
            async = false, -- Whether we should wait for the provider to return before showing the completions
            timeout_ms = 2000, -- How long to wait for the provider to return before showing completions and treating it as asynchronous
            transform_items = nil, -- Function to transform the items before they're returned
            should_show_items = true, -- Whether or not to show the items
            max_items = nil, -- Maximum number of items to display in the menu
            min_keyword_length = 0, -- Minimum number of characters in the keyword to trigger the provider
            -- If this provider returns 0 items, it will fallback to these providers.
            -- If multiple providers falback to the same provider, all of the providers must return 0 items for it to fallback
            fallbacks = {},
            score_offset = 0, -- Boost/penalize the score of the items
            override = nil, -- Override the source's functions
          },
          buffer = {
            name = 'Buffer',
            module = 'blink.cmp.sources.buffer',
            min_keyword_length = 1,
          },
        },
        -- Disable cmdline completions
        cmdline = {},
      },

      fuzzy = {},

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },

      -- Experimental signature help support
      signature = {
          enabled = false,
          window = { border = 'rounded' },
      },

    },
  },
}
