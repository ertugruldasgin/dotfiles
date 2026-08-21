return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				current_line_blame = false,
			})

			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
			vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>")
			vim.keymap.set("n", "]c", ":Gitsigns next_hunk<CR>")
			vim.keymap.set("n", "[c", ":Gitsigns prev_hunk<CR>")
		end,
	},
}
