return {
  "mikavilpas/yazi.nvim",
  keys = {
    { "<leader>ee", "<cmd>Yazi<cr>", desc = "Open Yazi file manager" },
  },
  config = function()
    require('yazi').setup({})
  end,
}

