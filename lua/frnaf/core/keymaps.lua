vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- For conciseness
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x', opts)

keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
keymap.set("v", "p", '"_dP', opts)

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })
keymap.set("n", "<leader>w", "<cmd>update<CR>", { desc = "Save or update file" })

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlight" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "[S]plit window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "[S]plit window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make [S]plit equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current [S]plit" })

keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
