return {
  dir = "~/workspace/cool_stuff/reform.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("reform").setup({
      ctrl_enter = true,
      on_insert_leave = true,
      auto_enable = {
        enabled = true,
        filetypes = { 'python', 'lua', 'java', 'javascript', 'json', 'actionscript', 'ruby', 'c',
          'cpp' },
        exclude_filetypes = {}
      },
      formatters = {
        python = 'autopep8',
        c = 'clang-format',
        cpp = 'clang-format'
      },
      debug = false
    })
  end,
}

