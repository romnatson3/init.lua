local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})

  local opts = {buffer = bufnr}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)

    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'pylsp', 'html'},
  -- ensure_installed = {'pylsp', 'html', 'pyright'},
  handlers = {
    lsp_zero.default_setup,
    pylsp = function()
        require('lspconfig').pylsp.setup{
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  enable = true,
                  ignore = {'E501'},
                  maxLineLength = 120
                },
              }
            }
          }
        }
    end,
    -- pyright = function()
    --     require('lspconfig').pyright.setup{
    --         settings = {
    --             pyright = {
    --             }
    --         }
    --     }
    -- end,
  },
})


lsp_zero.set_sign_icons({
  error = '',
  -- error = '✘',
  warn = '',
  -- warn = '‼',
  hint = '⚑',
  info = '»'
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
     prefix = "",
    },
})
