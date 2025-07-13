-- Neovim Configuration Entry Point
-- Modern Lua-style configuration with vim-plug

-- Set leader keys early
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Auto-install vim-plug if not found
local data_dir = vim.fn.has('nvim') == 1 and vim.fn.stdpath('data') .. '/site' or '~/.vim'
if vim.fn.empty(vim.fn.glob(data_dir .. '/autoload/plug.vim')) == 1 then
  vim.fn.system({
    'curl', '-fLo', data_dir .. '/autoload/plug.vim', '--create-dirs',
    'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  })
  vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
      vim.cmd('PlugInstall --sync')
      vim.cmd('source $MYVIMRC')
    end,
    once = true
  })
end

-- Bootstrap plugins with vim-plug
local Plug = vim.fn['plug#']
vim.call('plug#begin')

-- Theme
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })

-- File explorer


-- Status line
Plug('nvim-lualine/lualine.nvim')

-- Telescope (fuzzy finder)
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })

-- Treesitter (syntax highlighting)
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

-- LSP and completion
Plug('neovim/nvim-lspconfig')
Plug('folke/neodev.nvim')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')

-- Git integration
Plug('lewis6991/gitsigns.nvim')

-- Auto pairs
Plug('windwp/nvim-autopairs')

-- Comments
Plug('numToStr/Comment.nvim')

-- Terminal
Plug('akinsho/toggleterm.nvim', { ['tag'] = '*' })

-- Indent guides
Plug('lukas-reineke/indent-blankline.nvim')

-- Yazi file manager
Plug('mikavilpas/yazi.nvim')

vim.call('plug#end')

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

-- Load LSP configuration
require('lsp.cmp')
require('lsp')
