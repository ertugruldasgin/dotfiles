return {
	{
		"saghen/blink.cmp",
		version = "*",
		build = function()
			require("blink.cmp").build():pwait()
		end,
		dependencies = {
			"rafamadriz/friendly-snippets",
			"saghen/blink.lib",
		},
		opts = {
			keymap = {
				preset = "super-tab",
			},
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = {
				documentation = { auto_show = true, auto_show_delay_ms = 200 },
				ghost_text = { enabled = true },
			},
			snippets = {
				preset = "default",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				providers = {
					snippets = {
						opts = {
							search_paths = { vim.fn.stdpath("config") .. "/snippets" },
						},
					},
				},
			},
			signature = { enabled = true },
		},
	},
}
