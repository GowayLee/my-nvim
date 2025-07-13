# Neovim Configuration

This is a personal Neovim configuration designed for a modern and efficient workflow. It is built with Lua and managed by `vim-plug`.

## Features

-   **Modern & Fast**: Lightweight and optimized for performance.
-   **Plugin Management**: Uses `vim-plug` for easy plugin management.
-   **LSP & Completion**: Full-featured LSP support with `nvim-lspconfig` and `nvim-cmp`.
-   **File Explorer**: Integrated with `Yazi`, a terminal-based file manager.
-   **Fuzzy Finder**: `Telescope` for fast file navigation and searching.
-   **Git Integration**: `gitsigns` for seamless Git integration.
-   **Terminal**: Persistent terminal with `toggleterm`.

## Installation

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/your-repo-name.git ~/.config/nvim
    ```

2.  **Install `vim-plug`**:
    ```bash
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

3.  **Install plugins**:
    Open Neovim and run:
    ```vim
    :PlugInstall
    ```

## Keymap Notation

-   **`<leader>`**: The **`Space`** key.
-   **`<C-key>`**: `Ctrl` + `key`.
-   **`<M-key>`** or **`<A-key>`**: `Alt` + `key`.
-   **`<S-key>`**: `Shift` + `key`.

## Installed Plugins

| Plugin | Description |
| --- | --- |
| [catppuccin](https://github.com/catppuccin/nvim) | A soothing pastel theme for Neovim. |
| [yazi.nvim](https://github.com/mikavilpas/yazi.nvim) | A terminal-based file manager for Neovim. |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | A fast and easy-to-configure statusline for Neovim. |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | A highly extendable fuzzy finder over lists. |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Provides better syntax highlighting and code analysis. |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Configurations for the Neovim Language Server Protocol (LSP) client. |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | A manager for LSP servers, DAP servers, linters, and formatters. |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | A completion engine for Neovim. |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git integration for Neovim. |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Automatically inserts and manages pairs of characters. |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | A plugin for easily commenting out code. |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | A persistent terminal manager for Neovim. |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Adds indentation guides to your code. |

## Keymaps

### General

| Keymap | Description |
| --- | --- |
| `<leader>pv` | Open file explorer |
| `<C-h>` | Move to the window on the left |
| `<C-j>` | Move to the window below |
| `<C-k>` | Move to the window above |
| `<C-l>` | Move to the window on the right |
| `<leader>w` | Save file |
| `<leader>Q` | Force quit |

### Window Management

| Keymap | Description |
| --- | --- |
| `<leader>sv` | Split window vertically |
| `<leader>sh` | Split window horizontally |
| `<leader>se` | Make splits equal size |
| `<leader>sx` | Close current split |

### Tab Management

| Keymap | Description |
| --- | --- |
| `<leader>to` | Open new tab |
| `<leader>tx` | Close current tab |
| `<leader>tn` | Go to next tab |
| `<leader>tp` | Go to previous tab |

### Plugin Keymaps

| Keymap | Description |
| --- | --- |
| `<leader>ee` | Toggle file explorer (Yazi) |
| `<leader>ff` | Find files (Telescope) |
| `<leader>fg` | Live grep (Telescope) |
| `<leader>fb` | Find buffers (Telescope) |
| `<leader>fh` | Help tags (Telescope) |
| `<leader>g` | Toggle terminal (toggleterm) |

---

# Neovim 用户手册

这是一个个性化的 Neovim 配置，旨在提供现代化且高效的工作流程。它使用 Lua 构建，并由 `vim-plug` 管理。

## 特性

-   **现代与快速**: 轻量级并为性能优化。
-   **插件管理**: 使用 `vim-plug` 方便地管理插件。
-   **LSP 与补全**: 全功能的 LSP 支持，配备 `nvim-lspconfig` 和 `nvim-cmp`。
-   **文件浏览器**: 集成 `Yazi`，一个终端文件管理器。
-   **模糊查找器**: `Telescope` 用于快速文件导航和搜索。
-   **Git 集成**: `gitsigns` 实现无缝的 Git 集成。
-   **终端**: `toggleterm` 提供持久性终端。

## 安装

1.  **克隆仓库**:
    ```bash
    git clone https://github.com/your-username/your-repo-name.git ~/.config/nvim
    ```

2.  **安装 `vim-plug`**:
    ```bash
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

3.  **安装插件**:
    打开 Neovim 并运行:
    ```vim
    :PlugInstall
    ```

## 快捷键符号说明

-   **`<leader>`**: **`空格键`**。
-   **`<C-key>`**: `Ctrl` + `key`。
-   **`<M-key>`** 或 **`<A-key>`**: `Alt` + `key`。
-   **`<S-key>`**: `Shift` + `key`。

## 已安装插件

| 插件 | 描述 |
| --- | --- |
| [catppuccin](https://github.com/catppuccin/nvim) | 一个令人舒适的 Neovim 柔和主题。 |
| [yazi.nvim](https://github.com/mikavilpas/yazi.nvim) | Neovim 的终端文件管理器。 |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | 一个快速且易于配置的 Neovim 状态栏。 |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | 一个高度可扩展的列表模糊查找器。 |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | 提供更好的语法高亮和代码分析。 |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Neovim 语言服务器协议 (LSP) 客户端的配置。 |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP 服务器、DAP 服务器、linter 和格式化程序的管理器。 |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Neovim 的补全引擎。 |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Neovim 的 Git 集成。 |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | 自动插入和管理成对的字符。 |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | 一个可以轻松注释代码的插件。 |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Neovim 的持久性终端管理器。 |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | 为您的代码添加缩进指南。 |

## 快捷键

### 通用

| 快捷键 | 描述 |
| --- | --- |
| `<leader>pv` | 打开文件浏览器 |
| `<C-h>` | 移动到左侧窗口 |
| `<C-j>` | 移动到下方窗口 |
| `<C-k>` | 移动到上方窗口 |
| `<C-l>` | 移动到右侧窗口 |
| `<leader>w` | 保存文件 |
| `<leader>Q` | 强制退出 |

### 窗口管理

| 快捷键 | 描述 |
| --- | --- |
| `<leader>sv` | 垂直分割窗口 |
| `<leader>sh` | 水平分割窗口 |
| `<leader>se` | 使分割窗口大小相等 |
| `<leader>sx` | 关闭当前分割窗口 |

### 标签页管理

| 快捷键 | 描述 |
| --- | --- |
| `<leader>to` | 打开新标签页 |
| `<leader>tx` | 关闭当前标签页 |
| `<leader>tn` | 转到下一个标签页 |
| `<leader>tp` | 转到上一个标签页 |

### 插件快捷键

| 快捷键 | 描述 |
| --- | --- |
| `<leader>ee` | 切换文件浏览器 (Yazi) |
| `<leader>ff` | 查找文件 (Telescope) |
| `<leader>fg` | 实时搜索 (Telescope) |
| `<leader>fb` | 查找缓冲区 (Telescope) |
| `<leader>fh` | 帮助标签 (Telescope) |
| `<leader>g` | 切换终端 (toggleterm) |