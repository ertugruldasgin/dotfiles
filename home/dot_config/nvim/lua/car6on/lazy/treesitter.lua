return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").setup()
			require("nvim-treesitter").install({
				"c",
				"cpp",
				"go",
				"gomod",
				"gosum",
				"gotmpl",
				"lua",
				"python",
				"bash",
				"zig",
				"typescript",
				"tsx",
				"javascript",
				"html",
				"css",
				"json",
				"yaml",
				"toml",
				"dockerfile",
				"sql",
				"make",
				"markdown",
				"markdown_inline",
			})
			vim.api.nvim_create_autocmd("FileType", {
				callback = function()
					pcall(vim.treesitter.start)
				end,
			})
		end,
	},
}
