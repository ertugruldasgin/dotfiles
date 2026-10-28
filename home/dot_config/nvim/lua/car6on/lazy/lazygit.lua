return {
	{
		"kdheepak/lazygit.nvim",
		cmd = { "LazyGit", "LazyGitCurrentFile" },
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader>gg",
				function()
					vim.cmd("LazyGit")
					vim.api.nvim_create_autocmd("BufEnter", {
						once = true,
						callback = function()
							pcall(function()
								local api = require("nvim-tree.api")
								api.git.reload()
								api.tree.reload()
							end)
						end,
					})
				end,
			},
		},
	},
}
