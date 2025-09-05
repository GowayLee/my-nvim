return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	lazy = true,
	dependencies = { "zapling/mason-conform.nvim" },
	opts = {
		default_format_opts = {
			timeout_ms = 3000,
			async = false, -- not recommended to change
			quiet = false, -- not recommended to change
			lsp_format = "fallback", -- not recommended to change
		},
		formatters_by_ft = {
			java = { "clangformat" },
			cpp = { "clangformat" },
			c = { "clangformat" },
			markdown = { "prettier" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			lua = { "stylua" },
			python = { "ruff" },
			ocaml = { "ocamlformat" },
			bash = { "shellharden" },
			sh = { "shellharden" },
			zsh = { "shellharden" },
		},
	},
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({})
			end,
			desc = "Format file or range (in visual mode)",
			mode = { "n", "v" },
		},
	},
}
