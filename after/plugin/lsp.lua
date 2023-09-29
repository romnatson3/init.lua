local on_attach = function(client, bufnr)
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    -- vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
    vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>')
    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
end

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'pylsp', 'html'},
})

require('lspconfig').pylsp.setup{
    on_attach = on_attach,
    settings = {
        pylsp = {
            configurationSources = {'pycodestyle'},
            plugins = {
                pycodestyle = {enable = true, ignore = {'E501'}, maxLineLength = 120},
            }
        }
    }
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
    -- virtual_text = false,
    virtual_text = {
        prefix = "",
        spacing = 20,
    },
})

vim.fn.sign_define("DiagnosticSignError", {text = "", texthl = "DiagnosticSignError"})
-- vim.fn.sign_define("DiagnosticSignError", {text = "×", texthl = "DiagnosticSignError"})
-- vim.fn.sign_define("DiagnosticSignError", {text = "✘", texthl = "DiagnosticSignError"})
-- vim.fn.sign_define("DiagnosticSignError", {text = "", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = "", texthl = "DiagnosticSignWarn"})
-- vim.fn.sign_define("DiagnosticSignWarn", {text = "", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = "", texthl = "DiagnosticSignInfo"})
-- vim.fn.sign_define("DiagnosticSignInfo", {text = "¡", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = "󰌵", texthl = "DiagnosticSignHint"})
