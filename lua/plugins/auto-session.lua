return {
	"rmagatti/auto-session",
	lazy = false,
	init = function()
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
	end,
	keys = {
		{ "<c-m-o>", "<cmd>SessionSearch<cr>", desc = "Find Sessions" },
	},
	opts = {
		suppressed_dirs = { "~/", "~/workspace", "~/Downloads", "/", "/.config" },
	},
}
