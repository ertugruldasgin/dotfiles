return {
	{
		"stevearc/conform.nvim",
		config = function()
			local conform = require("conform")
			conform.setup({
				formatters = {
					c_formatter_42 = {
						command = "c_formatter_42",
						stdin = true,
					},
				},
				formatters_by_ft = {
					lua = { "stylua" },
					go = { "goimports", "gofmt" },
					-- c = { "clang-format" },
					c = { "c_formatter_42" },
					-- cpp = { "clang-format" },
					zig = { "zigfmt" },
					python = { "ruff_format" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					typescriptreact = { "prettier" },
					html = { "prettier" },
					css = { "prettier" },
					json = { "prettier" },
					yaml = { "prettier" },
					markdown = { "prettier" },
					sh = { "shfmt" },
					sql = { "sqlfluff" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
			vim.keymap.set({ "n", "v" }, "<leader>fm", function()
				conform.format({ async = true })
			end)
		end,
	},
}
