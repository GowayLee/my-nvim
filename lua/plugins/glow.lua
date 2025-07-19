return {
  "ellisonleao/glow.nvim",
  cmd = "Glow",
  keys = {
    { "<leader>p", "<cmd>Glow<cr>", desc = "Preview Markdown" },
  },
  config = function()
    require('glow').setup({
      style = "dark",
      width_ratio = 0.7,
      height_ratio = 0.7
    })
  end,
}

