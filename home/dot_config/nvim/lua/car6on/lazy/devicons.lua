return {
	{
		"nvim-tree/nvim-web-devicons",
		opts = {
			override_by_extension = {
				proto = {
					icon = vim.fn.nr2char(0xf109b),
					color = "#ebcb8b",
					name = "Proto",
				},
			},
		},
	},
}
