-- treesitter configuration
require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c", "lua", "vim", "vimdoc", "query", "python", "javascript",
    "typescript", "html", "css", "json", "yaml", "markdown", "bash",
    "rust", "go", "java", "cpp", "dockerfile", "sql", "toml", "xml"
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
})