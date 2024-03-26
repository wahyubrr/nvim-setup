require("dap-go").setup()
require("dap.ext.vscode").load_launchjs(nil, {})

local dap, dapui = require("dap"), require("dapui")
dapui.setup()

-- dapui setup
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

-- dapui icons
vim.fn.sign_define('DapBreakpoint', { text = '🟥', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '▶️', texthl = '', linehl = '', numhl = '' })

-- dapui keybindings
vim.keymap.set('n', '<leader>5', require 'dap'.continue) -- F5 to continue
-- vim.keymap.set('n', '<leader>6', require 'dap'.restart_frame)     -- F6 to run to cursor
-- vim.keymap.set('n', '<leader>7', require 'dap'.terminate)         -- F7 to run to cursor
vim.keymap.set('n', '<leader>0', require 'dap'.step_over)         -- F10 to step over
vim.keymap.set('n', '<leader>-', require 'dap'.step_into)         -- F11 to step into
vim.keymap.set('n', '<leader>=', require 'dap'.step_out)          -- F12 to step out
vim.keymap.set('n', '<leader>m', require 'dap'.toggle_breakpoint) -- F4 to toggle breakpoint
