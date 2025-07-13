## `lua/core/autocmds.lua` 文件描述

### 文件功能

`autocmds.lua` 文件用于定义 Neovim 的自动命令（autocommand）。这些命令会在特定事件发生时自动执行，从而实现编辑器行为的自动化和智能化。

### 已实现功能

1.  **yank 时高亮**：当用户执行 yank（复制）操作时，被复制的文本会短暂高亮，提供视觉反馈。
2.  **保存时去除行尾多余空格**：在保存文件之前，自动删除每行末尾多余的空格，保持代码整洁。
3.  **为特定文件类型设置 filetype**：
    *   `.conf` 文件自动识别为 `conf` 类型。
    *   `.env*` 文件自动识别为 `sh` 类型。
4.  **窗口大小调整时自动重置分屏**：当 Neovim 窗口大小改变时，自动调整所有分屏（split）的尺寸，使其均匀分布。
5.  **保存时自动创建不存在的目录**：当保存文件时，如果其所在的目录不存在，会自动创建这些缺失的目录。

### 后续开发

你可以在此文件中添加更多的自动命令，以满足个性化的需求。例如：

*   **根据文件类型设置缩进**：

    ```lua
    autocmd("FileType", {
      pattern = "python",
      command = "setlocal shiftwidth=4 tabstop=4",
    })
    ```

*   **在进入插入模式时改变光标样式**：

    ```lua
    autocmd("InsertEnter", {
      pattern = "*",
      command = "set guicursor+=a:blinkon0",
    })
    autocmd("InsertLeave", {
      pattern = "*",
      command = "set guicursor-=a:blinkon0",
    })
    ```

*   **自动加载 `.env` 文件**：在打开项目时，可以自动加载项目根目录下的 `.env` 文件中的环境变量。

**注意**：添加新的自动命令时，建议使用 `augroup` 将相关的命令分组，以便于管理和避免重复定义。