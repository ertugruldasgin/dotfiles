-- 42 Norm
vim.opt_local.expandtab = false
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 0

vim.opt_local.colorcolumn = "81"
vim.opt_local.textwidth = 0

vim.opt_local.list = true
vim.opt_local.listchars = { tab = "▸ ", trail = "·", nbsp = "␣" }

vim.api.nvim_create_autocmd("BufWritePre", {
	buffer = 0,
	callback = function()
		local pos = vim.api.nvim_win_get_cursor(0)
		vim.cmd([[silent! %s/\s\+$//e]])
		vim.api.nvim_win_set_cursor(0, pos)
	end,
})
