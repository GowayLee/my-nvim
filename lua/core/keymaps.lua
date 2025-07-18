-- Key mappings
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Navigation
keymap("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Window management
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap("n", "<leader>q", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

-- File operations
keymap("n", "<leader>lw", "<cmd>w<CR>", { desc = "Save file" })
keymap("n", "<leader>lq", "<cmd>q<CR>", { desc = "Quit" })
keymap("n", "<leader>lQ", "<cmd>qa!<CR>", { desc = "Force quit" })

-- Text manipulation
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line down" })
keymap("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

-- Search and replace
keymap("n", "<leader>rn", "[[:%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>]]", { desc = "Replace word under cursor" })

-- Quickfix
keymap("n", "<leader>co", "<cmd>copen<CR>", { desc = "Open quickfix" })
keymap("n", "<leader>cc", "<cmd>cclose<CR>", { desc = "Close quickfix" })
keymap("n", "<leader>cn", "<cmd>cnext<CR>", { desc = "Next quickfix" })
keymap("n", "<leader>cp", "<cmd>cprev<CR>", { desc = "Previous quickfix" })

-- Terminal
keymap("t", "<Esc>", [[<C-\><C-n>]], opts)
keymap("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
keymap("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
keymap("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
keymap("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)

-- Plugin keymaps
keymap("n", "<leader>ee", ":Yazi<CR>", { desc = "Toggle file explorer" })
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
keymap("n", "<leader>g", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
