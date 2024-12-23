return {
    {
        'mfussenegger/nvim-dap',
        config = function()
                
            local dap = require('dap')
            local dapui = require('dapui')

            dap.adapters.python = {
                type = 'executable';
                command = 'python';
                args = { '-m', 'debugpy.adapter' };
            }

            dap.configurations.python = {
                {
                    type = 'python';
                    request = 'launch';
                    name = "Launch file";
                    program = "${file}";
                    pythonPath = function()
                        return 'python'
                    end;
                },
            }

            table.insert(dap.configurations.python, {
                type = 'python',
                request = 'launch',
                name = 'Django',
                program = vim.fn.getcwd() .. '/manage.py',
                args = {'runserver', '0.0.0.0:8000', '--noreload'},
                django = true,
                console = 'integratedTerminal',
                justMyCode = true,
                cwd = vim.fn.getcwd(),
                pythonPath = function()
                    return 'python'
                end,
            })


            dap.listeners.before.attach.dapui_config = function()
              dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
              dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
              dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
              dapui.close()
            end

            vim.keymap.set('n', '<space><F5>', dap.continue)
            vim.keymap.set('n', '<space><F6>', dap.step_into)
            vim.keymap.set('n', '<space><F7>', dap.step_over)
            vim.keymap.set('n', '<space><F8>', dap.step_out)
            vim.keymap.set('n', '<space><F12>', dap.disconnect)

        end
    },
    {
        'mfussenegger/nvim-dap-python',
        config = function()
            require('dap-python').setup('python')
        end
    },
    {
        'Weissle/persistent-breakpoints.nvim',
        config = function()
            require('persistent-breakpoints').setup{
                load_breakpoints_event = { "BufReadPost" },
                save_dir = vim.fn.stdpath('data') .. '/nvim_checkpoints'
            }

            local opts = { noremap = true, silent = true }
            local breakpoints = require('persistent-breakpoints.api')

            vim.keymap.set('n', '<space><F9>', breakpoints.toggle_breakpoint, opts)
            vim.keymap.set('n', '<space>bc', breakpoints.clear_all_breakpoints, opts)
            -- vim.keymap.set('n', '<space><F9>', dap.toggle_breakpoint)

            vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='red', linehl='', numhl=''})

        end
    },
    {
        'rcarriga/nvim-dap-ui',
        dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
        config = function()
            require('dapui').setup()
        end
    }

}
