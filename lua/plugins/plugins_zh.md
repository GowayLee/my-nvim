## `lua/plugins/` 目录描述

### 目录功能

`lua/plugins/` 目录存放所有通过 `vim-plug` 管理的插件的配置文件。每个 `.lua` 文件对应一个插件，负责该插件的加载和个性化设置。

### 已配置插件

1.  **`autopairs.lua`**: `nvim-autopairs`
    *   **功能**：自动补全括号、引号等成对的符号。
    *   **配置**：开启了对 Treesitter 的支持，并为特定语言（如 Lua, JavaScript）配置了更智能的补全规则。

2.  **`colorscheme.lua`**: `catppuccin`
    *   **功能**：设置 Neovim 的颜色主题。
    *   **配置**：使用了 `mocha` 风格的 `catppuccin` 主题。

3.  **`comment.lua`**: `Comment.nvim`
    *   **功能**：快速注释和取消注释代码块。
    *   **配置**：定义了行注释（`gcc`）和块注释（`gbc`）的快捷键。

4.  **`gitsigns.lua`**: `gitsigns.nvim`
    *   **功能**：在编辑器左侧的 `signcolumn` 中显示 Git 的修改状态（增加、修改、删除）。
    *   **配置**：自定义了各种 Git状态 的显示符号。

5.  **`indent-blankline.lua`**: `indent-blankline.nvim`
    *   **功能**：显示缩进参考线，使代码结构更清晰。
    *   **配置**：设置了缩进线的字符样式，并排除了一些特殊文件类型（如 `neo-tree`, `mason`）。

6.  **`lualine.lua`**: `lualine.nvim`
    *   **功能**：一个美观且功能丰富的状态栏插件。
    *   **配置**：使用了 `catppuccin` 主题，并定制了状态栏的显示内容，如 Git 分支、文件类型、诊断信息等。

7.  **`nvim-tree.lua`**: `nvim-tree.lua`
    *   **功能**：一个文件浏览器，用于在 Neovim 中浏览和管理文件系统。
    *   **配置**：设置了文件树的默认宽度，并允许显示隐藏文件（dotfiles）。

8.  **`telescope.lua`**: `telescope.nvim`
    *   **功能**：一个强大的模糊搜索工具，可以快速查找文件、Grep 搜索、切换 Buffer 等。
    *   **配置**：为不同的选择器（picker）设置了不同的主题（`dropdown`, `ivy`），并配置了文件忽略规则。

9.  **`toggleterm.lua`**: `toggleterm.nvim`
    *   **功能**：在 Neovim 中方便地切换和管理终端窗口。
    *   **配置**：设置了终端窗口的大小、打开方式（浮动窗口）、快捷键（`<c-\>`）等。

10. **`treesitter.lua`**: `nvim-treesitter`
    *   **功能**：提供更精准和快速的语法高亮、缩进等功能。
    *   **配置**：预装了多种常用语言的解析器，并开启了高亮和缩进功能。

### 后续开发

当需要添加新的插件时，可以遵循以下步骤：

1.  **在 `init.lua` 中添加插件**：
    在 `vim-plug` 的插件列表中添加新的插件，例如：

    ```lua
    plug 'new-plugin/name'
    ```

2.  **创建新的配置文件**：
    在 `lua/plugins/` 目录下创建一个与插件同名的 `.lua` 文件，例如 `new-plugin.lua`。

3.  **编写插件配置**：
    在新创建的 `.lua` 文件中，使用 `require` 函数加载并配置插件。例如：

    ```lua
    -- new-plugin.lua
    require('new-plugin').setup({
      -- 在这里添加你的配置
      option1 = true,
      option2 = 'value',
    })
    ```

4.  **重新加载 Neovim 并安装插件**：
    重新启动 Neovim，然后运行 `:PlugInstall` 来安装新添加的插件。

通过这种方式，可以保持插件配置的模块化和整洁，便于管理和维护。