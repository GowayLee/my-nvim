return {
  -- LSP Configuration
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "folke/lazydev.nvim",
  },
  config = function()
    -- This will be handled by the separate lsp/ configuration files
    -- Keeping it minimal here since you have dedicated lsp configs
  end,
}

