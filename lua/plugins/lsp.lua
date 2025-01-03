return {
    { 
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({})
        end
    },  
    {
        'illiamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {'pylsp', 'pyright', 'html', 'lua_ls'},
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local on_attach = function(client, bufnr)
                vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
                -- vim.keymap.set('n', 'H', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
                -- vim.keymap.set('n', 'gd', ':vsplit | lua vim.lsp.buf.definition()<cr>')
                -- vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
                vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>')
                vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
                vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
                vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
            end

            local capabilities = require('blink.cmp').get_lsp_capabilities()

            require('lspconfig').pylsp.setup{
                capabilities = capabilities,
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

            -- require('lspconfig').pyright.setup({})

            require('lspconfig').lua_ls.setup{
                capabilities = capabilities,
                on_attach = on_attach,
            }


            -- local border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│"}
            local border = { "┌", "─", "┐", "│", "┘", "─", "└", "│"}

            vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
                vim.lsp.diagnostic.on_publish_diagnostics, {
                    virtual_text = false,
                    -- virtual_text = {
                    --     -- prefix = "",
                    --     prefix = "■",
                    --     spacing = 10,
                    -- },
                    underline = false,
                    update_in_insert = false,
                    signs = true,
                    severity_sort = true
                }
            )
            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {border = border,})
            vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {border = border,})

            local ns_id = vim.api.nvim_create_namespace('Diagnostic')
            local hi = { 'Error', 'Warn','Info','Hint'}
            local group = vim.api.nvim_create_augroup('Diagnostic', {clear=true})
            vim.api.nvim_create_autocmd('CursorHold', {
                pattern = '*.py',
                callback = function(args)
                    pcall(vim.api.nvim_buf_clear_namespace, args.buf, ns_id, 0, -1)
                    -- local buffer = vim.fn.expand("%")
                    local buffer = args.buf
                    local line, _ = unpack(vim.api.nvim_win_get_cursor(0))
                    local diagnostics = vim.diagnostic.get(buffer, {lnum = line - 1})
                    local virt_texts = {{string.rep(' ', 5)}}
                    local messages = {} 
                    for i, diag in ipairs(diagnostics) do
                        messages[i] = diag.message
                        virt_texts[#virt_texts + 1] = {' '..diag.message..' ', 'DiagnosticVirtualText'..hi[diag.severity]}
                    end
                    if next(diagnostics) ~= nil then
                        message = table.concat(messages, ' | ')
                        print(message)
                        local opts = {
                            virt_text = virt_texts,
                            hl_mode = 'combine',
                            -- virt_text_pos = 'right_align',
                        }
                        vim.api.nvim_buf_set_extmark(buffer, ns_id, line - 1, 0, opts)
                    end
                end,
                group = group
            })

            vim.api.nvim_create_autocmd({'CursorMoved', 'InsertEnter'}, {
                pattern = {'*.py', '*.lua'},
                callback = function(args)
                    pcall(vim.api.nvim_buf_clear_namespace, args.buf, ns_id, 0, -1)
                    print(" ")
                end, 
                group = group
            })
        end
    }
}
