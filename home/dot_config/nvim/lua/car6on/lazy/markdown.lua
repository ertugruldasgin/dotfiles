return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {},
		keys = {
			{ "<leader>md", "<cmd>RenderMarkdown toggle<cr>", ft = "markdown" },
		},
	},
}
