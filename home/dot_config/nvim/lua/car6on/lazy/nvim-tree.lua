return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			require("nvim-tree").setup({
				view = {
					width = 36,
					side = "left",
					preserve_window_proportions = true,
					number = false,
					relativenumber = false,
					signcolumn = "yes",
				},
				renderer = {
					icons = {
						glyphs = {
							git = {
								unstaged = "M",
								staged = "S",
								unmerged = "",
								renamed = "R",
								untracked = "?",
								deleted = "D",
								ignored = "◌",
							},
						},
					},
				},
				git = { enable = true },
				filters = { git_ignored = false },
				diagnostics = { enable = true, show_on_dirs = true },
				actions = { open_file = { quit_on_open = false } },
			})

			vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")
		end,
	},
}
