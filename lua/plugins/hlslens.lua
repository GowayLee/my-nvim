return {
	"kevinhwang91/nvim-hlslens",
	event = "VeryLazy",
	keys = {
		{
			"n",
			"<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>",
			desc = "Next search result with lens",
		},
		{
			"N",
			"<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>",
			desc = "Previous search result with lens",
		},
		{ "*", "*<Cmd>lua require('hlslens').start()<CR>", desc = "Search word under cursor forward with lens" },
		{ "#", "#*<Cmd>lua require('hlslens').start()<CR>", desc = "Search word under cursor backward with lens" },
		{ "g*", "g*<Cmd>lua require('hlslens').start()<CR>", desc = "Search partial word under cursor forward" },
		{ "g#", "g#<Cmd>lua require('hlslens').start()<CR>", desc = "Search partial word under cursor backward" },
		{ "<Leader>l", "<Cmd>noh<CR>", desc = "Clear search highlight" },
	},
	dependencies = {},
	opts = {
		auto_enable = true,
		enable_incsearch = true,
		calm_down = false,
		nearest_only = false,
		nearest_float_when = "auto",
		float_shadow_blend = 50,
	},
	-- config = function()
	-- 	require("hlslens").setup()
	-- 	local kopts = { noremap = true, silent = true }
	--
	-- 	vim.api.nvim_set_keymap(
	-- 		"n",
	-- 		"n",
	-- 		[[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
	-- 		kopts
	-- 	)
	-- 	vim.api.nvim_set_keymap(
	-- 		"n",
	-- 		"N",
	-- 		[[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
	-- 		kopts
	-- 	)
	-- 	vim.api.nvim_set_keymap("n", "*", [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
	-- 	vim.api.nvim_set_keymap("n", "#", [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
	-- 	vim.api.nvim_set_keymap("n", "g*", [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
	-- 	vim.api.nvim_set_keymap("n", "g#", [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)
	--
	-- 	vim.api.nvim_set_keymap("n", "<Leader>l", "<Cmd>noh<CR>", kopts)
	-- end,
}
