vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F2>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F3>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")

vim.keymap.set("n", "<leader>dk", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>dl", ":lua require'dap'.run_last()<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")

vim.fn.sign_define('DapBreakpoint', { text = "", texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointCondition', { text = "", texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapLogPoint', { text = "", texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = "", texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = "", texthl = '', linehl = '', numhl = '' })

require("dapui").setup()

require("nvim-dap-virtual-text").setup {
    commented = true,
}

local dap = require("dap")
local nvim_bin_path = vim.fn.stdpath "data" .. "/bin"

-------------------------------------------------------------------------------
-- C, C++, RUST
-- ----------------------------------------------------------------------------

dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = nvim_bin_path .. '/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
    },
    {
        name = 'Attach to gdbserver :1234',
        type = 'cppdbg',
        request = 'launch',
        MIMode = 'gdb',
        miDebuggerServerAddress = 'localhost:1234',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
    },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

-------------------------------------------------------------------------------
-- DAPUI
-- ----------------------------------------------------------------------------

local dapui = require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end
