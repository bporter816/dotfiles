local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("i", "kj", "<Esc>", opts)

-- better split navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- resizing
keymap("n", "<leader><Up>", ":resize +2<CR>", opts)
keymap("n", "<leader><Down>", ":resize -2<CR>", opts)
keymap("n", "<leader><Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<leader><Right>", ":vertical resize +2<CR>", opts)

-- swap adjacent lines
keymap("n", "<leader>k", ":m .-2<CR>==", opts)
keymap("n", "<leader>j", ":m .+1<CR>==", opts)

-- misc
keymap("n", "<leader>e", ":Lex 30<CR>", opts)              -- toggle file explorer
keymap("n", "<leader>r", ":set relativenumber!<CR>", opts) -- toggle relativenumber
keymap("n", "<leader>q", ":Rexplore<CR>", opts)
keymap("n", "<leader>nh", ":nohl<CR>", opts)
