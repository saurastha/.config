return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		columns = {
			"permissions",
			"icon",
		},
		float = {
			max_width = 0.7,
			max_height = 0.6,
			border = "rounded",
		},
		keymaps = {
			["yp"] = {
				callback = function()
					require("oil.actions").copy_entry_path.callback()
					vim.fn.setreg("+", vim.fn.getreg(vim.v.register))
					print("Copied absolute path to system clipboard!")
				end,
				desc = "Copy filepath to system clipboard",
			},
		},
		view_options = {
			highlight_filename = function(entry, is_hidden, is_link_target, is_link_orphan)
				local bufnr = vim.fn.bufnr(entry.name)
				if bufnr ~= -1 and vim.bo[bufnr].modified then
					return "WarningMsg"
				end
				return nil
			end,
		},
	},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
}
