return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

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

		vim.keymap.set("n", "<Leader>dc", function()
			dap.continue()
		end)
		vim.keymap.set("n", "<Leader>ds", function()
			dap.step_over()
		end)
		vim.keymap.set("n", "<Leader>di", function()
			dap.step_into()
		end)
		vim.keymap.set("n", "<Leader>do", function()
			dap.step_out()
		end)
		vim.keymap.set("n", "<Leader>db", function()
			dap.toggle_breakpoint()
		end)
	end,
}
