return {
  "folke/lazydev.nvim",
  ft = "lua",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("lazydev").setup({})
  end,
}

