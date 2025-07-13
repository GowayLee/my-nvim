# GEMINI.md

This file provides guidance to Gemini-Cli when working with code in this repository.

## Overview
This is a modular Neovim configuration using Lua, built with vim-plug as the plugin manager. The configuration follows modern Neovim best practices with separate modules for different concerns.

## Architecture
- **Entry Point**: `init.lua` - Bootstraps vim-plug and loads core configuration modules
- **Core Configuration**: Located in `lua/core/` with separate files for:
  - `options.lua`: Editor settings, appearance, file handling
  - `keymaps.lua`: Global keybindings and leader key setup
  - `autocmds.lua`: Automatic commands for various behaviors
- **Plugins**: Managed by vim-plug, defined in `init.lua` with individual configuration files per plugin in `lua/plugins/`
- **LSP**: Configured in `lua/lsp/` with separate files for LSP setup and completion

## Key Commands & Usage
- **Plugin Management**:
  - Install plugins: `:PlugInstall`
  - Update plugins: `:PlugUpdate`
  - Clean unused plugins: `:PlugClean`
- **LSP Management**:
  - Install LSP servers: `:Mason`
  - LSP info: `:LspInfo`
- **Common Operations**:
  - File explorer: `<leader>e` (nvim-tree)
  - Fuzzy find files: `<leader>ff` (telescope)
  - Live grep: `<leader>fg` (telescope)
  - Toggle terminal: `<leader>g` (toggleterm)

## Configuration Structure
```
~/.config/nvim/
├── init.lua                 # Main entry point with vim-plug
├── lua/
│   ├── core/
│   │   ├── options.lua      # Core editor settings
│   │   ├── keymaps.lua      # Global keybindings
│   │   └── autocmds.lua     # Auto commands
│   ├── plugins/             # Plugin configurations
│   │   ├── *.lua            # Individual plugin configs
│   └── lsp/                 # LSP configuration
│       ├── init.lua         # LSP server setup
│       └── cmp.lua          # Completion setup
```

## Important Paths
- **Plugin data**: `~/.local/share/nvim/plugged/`
- **Mason binaries**: `~/.local/share/nvim/mason/bin/`
- **Configuration**: `~/.config/nvim/`

## Development Notes
- All plugins use vim-plug for management
- Keymaps use `<leader>` (space) as prefix
- LSP servers are installed via Mason for consistency
- Treesitter provides syntax highlighting for 18+ languages
- Git integration includes gitsigns and terminal integration

## Gemini Guidance
- The users are The Minimalists! So never automatically add unnecessary stuff to their nvim/vim
