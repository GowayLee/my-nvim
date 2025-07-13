# Neovim Configuration

This is a personal Neovim configuration designed for a modern and efficient workflow. It is built with Lua and managed by `vim-plug`.

## Features

-	**Modern & Fast**: Lightweight and optimized for performance.
-	**Plugin Management**: Uses `vim-plug` for easy plugin management.
-	**LSP & Completion**: Full-featured LSP support with `nvim-lspconfig` and `nvim-cmp`.
-	**File Explorer**: Integrated with `Yazi`, a terminal-based file manager.
-	**Fuzzy Finder**: `Telescope` for fast file navigation and searching.
-	**Git Integration**: `gitsigns` for seamless Git integration.
-	**Terminal**: Persistent terminal with `toggleterm`.

## Installation

1.	**Clone the repository**:
    ```bash
    git clone https://github.com/your-username/your-repo-name.git ~/.config/nvim
    ```

2.	**Install `vim-plug`**:
    ```bash
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

3.	**Install plugins**:
    Open Neovim and run:
    ```vim
    :PlugInstall
    ```

## Keymap Notation

-	**`<leader>`**: The **`Space`** key.
-	**`<C-key>`**: `Ctrl` + `key`.
-	**`<M-key>`** or **`<A-key>`**: `Alt` + `key`.
-	**`<S-key>`**: `Shift` + `key`.

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
