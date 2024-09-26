vim.opt.undodir = os.getenv("HOME") .. '/.local/share/nvim/site/pack/packer/start/vimspector'
vim.g.vimspector_sidebar_width = 75
vim.g.vimspector_bottombar_height = 15

vim.keymap.set('n', '<leader><F9>', ':call vimspector#ToggleBreakpoint()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F12>', ':call vimspector#Reset()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F1>', ':call vimspector#ClearBreakpoints()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F5>', ':call vimspector#Launch()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F6>', ':call vimspector#Continue()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F7>', ':call vimspector#StepOver()<CR>', {silent = true})
vim.keymap.set('n', '<leader><F8>', ':call vimspector#StepInto()<CR>', {silent = true})

-- .vimspector.json, copy this file to project folder
-- {
--     "configurations": {
--         "debugpy": {
--             "adapter": "debugpy",
--             "configuration": {
--                 "type": "python",
--                 "request": "launch",
--                 "program": "${file}"
--             },
--             "breakpoints": {
--                 "exception": {
--                     "raised": "N",
--                     "uncaught": "Y",
--                     "userUnhandled": "N"
--                 }
--             }
--         }
--     }
-- }
--
-- Django project config
-- {
--     "$shema": "https://puremourning.github.com/vimspector/schema/vimspector.schema.json",
--     "configurations": {
--         "django": {
--             "adapter": "debugpy",
--             "configuration": {
--                 "request": "launch",
--                 "python": "${VIRTUAL_ENV}/bin/python3",
--                 "program": "${workspaceRoot}/manage.py",
--                 "args": [ "runserver", "0.0.0.0:8000", "--noreload" ],
--                 "django": true,
--                 "stopOnEntry": true
--             },
--             "breakpoints": {
--                 "exception": {
--                     "raised": "N",
--                     "uncaught": "Y",
--                     "userUnhandled": "N"
--                 }
--             }
--         }
--     }
-- }
--
-- Celery
-- {
--     "configurations": {
--         "debugpy": {
--             "adapter": "debugpy",
--             "configuration": {
--                 "type": "python",
--                 "python": "${VIRTUAL_ENV}/bin/python",
--                 "request": "launch",
--                 "cwd": "${workspaceRoot}",
--                 "program": "/opt/test/env/bin/celery",
--                 "args": [ "-A", "test_celery", "worker", "-l", "INFO" ]
--             },
--             "breakpoints": {
--                 "exception": {
--                     "raised": "N",
--                     "uncaught": "Y",
--                     "userUnhandled": "N"
--                 }
--             }
--         }
--     }
-- }
