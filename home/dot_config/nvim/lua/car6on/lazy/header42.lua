return {
  "42Paris/42header",
  cmd = "Stdheader",
  ft = { "c", "h" },
  init = function()
    vim.g.user42 = "udasgin"
    vim.g.mail42 = "udasgin@student.42istanbul.com.tr"
  end,
  keys = {
    { "<leader>hh", "<cmd>Stdheader<cr>", desc = "42 header" },
  },
}
