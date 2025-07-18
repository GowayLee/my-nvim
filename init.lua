-- Neovim Configuration Entry Point
-- Modern Lua-style configuration with lazy.nvim

-- Setup nvim's Python venv
vim.g.python3_host_prog = vim.fn.expand('~/.config/nvim/nvim-python/bin/python')

-- Set leader keys early
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Theme
    { "catppuccin/nvim",                          name = "catppuccin",                       priority = 1000 },

    -- Status line
    { "nvim-lualine/lualine.nvim" },

    -- Telescope (fuzzy finder)
    { "nvim-telescope/telescope.nvim",            dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

    -- Treesitter (syntax highlighting)
    { "nvim-treesitter/nvim-treesitter",          build = ":TSUpdate" },

    -- LSP and completion
    { "neovim/nvim-lspconfig" },
    { "folke/lazydev.nvim" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "hrsh7th/nvim-cmp",                         event = "InsertEnter" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },

    -- Git integration
    { "lewis6991/gitsigns.nvim" },

    -- Auto pairs
    { "windwp/nvim-autopairs",                    event = "InsertEnter" },

    -- Comments
    { "numToStr/Comment.nvim",                    event = "VeryLazy" },

    -- Terminal
    { "akinsho/toggleterm.nvim",                  version = "*" },

    -- Indent guides
    { "lukas-reineke/indent-blankline.nvim" },

    -- Yazi file manager
    { "mikavilpas/yazi.nvim" },

-- Terminal
Plug('akinsho/toggleterm.nvim', { ['tag'] = '*' })

    -- Glow integration
    { "ellisonleao/glow.nvim" },
  },
  -- Configure any other settings here. See the documentation for more details.
  install = { colorscheme = { "catppuccin" } },
  checker = { enabled = true },
})

-- Load core configuration
require('core.options')
require('core.keymaps')
require('core.autocmds')

-- Load plugin configurations
require('plugins.colorscheme')

require('plugins.lualine')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.gitsigns')
require('plugins.autopairs')
require('plugins.comment')
require('plugins.toggleterm')
require('plugins.indent-blankline')
require('plugins.yazi')
require('plugins.reform')
require('plugins.glow')

-- Load LSP configuration
require('lsp.cmp')
require('lsp')
