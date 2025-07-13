-- Core Neovim options
local opt = vim.opt
local g = vim.g

-- Editor behavior
opt.number = true
opt.relativenumber = true
opt.wrap = true
opt.linebreak = true
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.colorcolumn = "80"
opt.cursorline = true

-- File handling
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Performance
opt.updatetime = 50
opt.timeoutlen = 300

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Netrw
g.netrw_banner = 0
g.netrw_mouse = 2
