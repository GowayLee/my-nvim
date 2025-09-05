return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	dependencies = {
		{ "nvim-lua/plenary.nvim", lazy = true },
	},
	keys = {
		{ "<leader>ee", "<cmd>Yazi<cr>", desc = "Open Yazi file manager" },
	},
	opts = {},
}
