-- reform configuration

require("reform").setup({
  ctrl_enter = false,
  on_insert_leave = true,
  auto_enable = true,
  supported_filetypes = { 'python', 'lua', 'c', 'cpp', 'javascript' }
})

