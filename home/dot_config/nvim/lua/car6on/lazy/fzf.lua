return {
	{
		"ibhagwan/fzf-lua",
		config = function()
			local fzf = require("fzf-lua")
			fzf.setup({ "default" })

			vim.keymap.set("n", "<leader>ff", fzf.files)
			vim.keymap.set("n", "<leader>fg", fzf.live_grep)
			vim.keymap.set("n", "<leader>fb", fzf.buffers)
			vim.keymap.set("n", "<C-p>", fzf.git_files)
			vim.keymap.set("n", "<leader>gs", fzf.git_status)
			vim.keymap.set("n", "<leader>fd", fzf.diagnostics_workspace)
		end,
	},
}
