-- Auto commands
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
local yank_group = augroup("HighlightYank", {})
autocmd("TextYankPost", {
  group = yank_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 40,
    })
  end,
})

-- Remove trailing whitespace
local trim_group = augroup("TrimWhitespace", {})
autocmd("BufWritePre", {
  group = trim_group,
  pattern = "*",
  command = "%s/\\s\\+$//e",
})

-- Set filetype for specific files
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.conf",
  command = "set filetype=conf",
})

autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.env*",
  command = "set filetype=sh",
})

-- Auto resize splits when window is resized
local resize_group = augroup("ResizeSplits", {})
autocmd("VimResized", {
  group = resize_group,
  pattern = "*",
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- Auto create missing directories when saving files
autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    local dir = vim.fn.fnamemodify(args.file, ":p:h")
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end,
})