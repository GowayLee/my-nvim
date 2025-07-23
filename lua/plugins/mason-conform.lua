return {
	"zapling/mason-conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "stevearc/conform.nvim" },
	opts = {
		ignore_install = { "stylua" },
	},
}
