return {
	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		opts = {},
		keys = {
			{ "<leader>dd", "<cmd>Trouble diagnostics toggle<cr>" },
			{ "<leader>db", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>" },
			{ "<leader>dq", "<cmd>Trouble qflist toggle<cr>" },
			{ "<leader>ds", "<cmd>Trouble symbols toggle<cr>" },
		},
	},
}
