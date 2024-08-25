return {
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set({ "n", "x" }, "<leader>go", ":GBrowse<CR>", { desc = "git browse" })
			vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "git blame" })
		end,
	},
	"tpope/vim-rhubarb",
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
